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
 * You should have received attr copy of the GNU General Public License
 * along with CrossMobile; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.crossmobile.build.ib.helper;

import org.crossmobile.build.ib.Element;
import org.crossmobile.build.ib.Values;

public class Color extends Element {

    @Override
    protected void addSupported() {
        addSupportedAttribute("key", Values.String);
        addSupportedAttribute("red", Values.Float);
        addSupportedAttribute("green", Values.Float);
        addSupportedAttribute("blue", Values.Float);
        addSupportedAttribute("white", Values.Float);
        addSupportedAttribute("alpha", Values.Float);
        addSupportedAttribute("cocoaTouchSystemColor", Values.Method);
        addSupportedAttribute("colorSpace", Values.String);
        addSupportedAttribute("customColorSpace", Values.String);
    }

    @Override
    public String toCode() {
        String value = attr("white");
        if (value != null)
            return "UIColor.colorWithWhiteAlpha(" + value + ", " + attr("alpha") + ")";
        if ((value = attr("red")) != null)
            return "UIColor.colorWithRedGreenBlueAlpha(" + value + ", " + attr("green") + ", " + attr("blue") + ", " + attr("alpha") + ")";
        if ((value = attr("cocoaTouchSystemColor")) != null)
            return "UIColor." + value;
        return "UIColor.white()";   // failsafe
    }
}
