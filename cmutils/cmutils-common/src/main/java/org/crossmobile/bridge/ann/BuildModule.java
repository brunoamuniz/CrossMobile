package org.crossmobile.bridge.ann;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE})
@CMLib(target = CMLibTarget.APIJAVA)
public @interface BuildModule {
    String[] value();

    boolean inMainTarget() default false;

    boolean principalClass() default false;
}
