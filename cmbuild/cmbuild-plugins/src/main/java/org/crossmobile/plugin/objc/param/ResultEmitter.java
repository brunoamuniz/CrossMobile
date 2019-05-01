/* (c) 2019 by Panayotis Katsaloulis
 *
 * CrossMobile is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 2.
 *
 * CrossMobile is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with CrossMobile; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.crossmobile.plugin.objc.param;

import org.crossmobile.plugin.model.NSelector;
import org.crossmobile.plugin.model.NType;
import org.crossmobile.plugin.utils.Streamer;

import java.io.IOException;

import static org.crossmobile.plugin.reg.TypeRegistry.*;
import static org.crossmobile.utils.NamingUtils.getClassNameFull;

public class ResultEmitter {

    private final static String RESULT = "re$ult";
    private final NType returnType;
    private final Class javaType;
    private final boolean forward;
    private final Emitter result;
    private final StringBuilder destroyBuffer = new StringBuilder();

    public ResultEmitter(NSelector sel, boolean forward) {
        this(sel.getReturnType(),
                sel.getJavaReturn(),
                sel.getOriginalCode(),
                sel.getReturnType().getType().isPrimitive() && !sel.getJavaReturn().isPrimitive(),
                sel.isConstructor(), sel.isFakeConstructor(), sel.getMethodType().isVarArgs(), forward);
    }

    private ResultEmitter(NType returnType, Class javaType, String origCode, boolean boxed, boolean constructor, boolean fakeConstructor, boolean bridgedVararg, boolean forward) {
        this.returnType = returnType;
        this.javaType = javaType;
        this.forward = forward;
        this.result = parseReturn(returnType, javaType, origCode, boxed, constructor, fakeConstructor, bridgedVararg, !forward);
    }

    private ResultEmitter(NType returnType, Class javaType, boolean forward, Emitter result) {
        this.returnType = returnType;
        this.javaType = javaType;
        this.forward = forward;
        this.result = result;
    }

    private Emitter parseReturn(NType type, Class javaType, String origCode, boolean boxed, boolean constructor, boolean fakeConstructor, boolean bridgedVararg, boolean reverse) {
        if (isCBased(javaType))
            return new EmitterCType("", RESULT, type, constructor, false, reverse);
        else if (javaType.equals(Void.TYPE))
            return EmitterVoid.TYPE;
        else if (type.isPrimitive())
            return new EmitterPrimitive("", RESULT, type, boxed, reverse);
        if (javaType.isArray())
            return new EmitterArray("", RESULT, type, javaType, reverse);
        else if (isObjCBased(javaType) || isJavaWrapped(javaType) || isTarget(javaType)) {
            boolean noRetain = (constructor || fakeConstructor) && !bridgedVararg;    // if it is bridged vararg, retain is (probably) required, since Swift seems to put things into the autorelease pool anyway.
            return new EmitterObject("", RESULT, type, noRetain, reverse);
        } else if (type.getBlock() != null || isBlockTarget(javaType))
            return new EmitterBlock("", RESULT, type, reverse);
        else {
            System.out.println("Unknown return emitter for " + getClassNameFull(type.getType()) + " in selector `" + origCode + "`");
            return new Emitter(RESULT, type, false, forward) {
            };
        }
    }

    ResultEmitter copy() {
        return new ResultEmitter(returnType, javaType, forward, result);
    }

    public void appendDestroy(String destroy) {
        destroyBuffer.append(destroy);
    }

    public void emit(Streamer out, String caller) throws IOException {
        boolean needsDestroy = destroyBuffer.length() > 0;
        out.append(result.exec(caller, needsDestroy))
                .append(destroyBuffer.toString())
                .append(result.result(caller, needsDestroy));
    }

}
