/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.utils;

import org.crossmobile.prefs.Prefs;
import org.crossmobile.utils.Param.TagType;

import static org.crossmobile.utils.Param.TagType.*;

public enum ParamsCommon {

    CM_PLUGINS("", SYSTEM),

    GROUP_ID("", SYSTEMRUNTIME),
    ARTIFACT_ID("", SYSTEMRUNTIME),
    BUNDLE_VERSION("", SYSTEMRUNTIME),
    DISPLAY_NAME("", SYSTEMRUNTIME),

    INJECTED_INFOPLIST("", BUILD),
    OBJC_IGNORE_INCLUDES("", BUILD),
    DEBUG_PROFILE("outerr", BUILD),
    USES_PERMISSIONS("", BUILD),
    TARGET(AndroidTarget.DEFAULT, BUILD),
    TARGET_NUMERIC(AndroidTarget.NUMERIC_DEFAULT, BUILD),
    ANDROID_GRADLE_ROOT("", BUILD),
    ANDROID_GRADLE_DEPS("", BUILD),
    JAVAC_SOURCE("1.8", BUILD),
    JAVAC_TARGET("1.8", BUILD),

    KEY_STORE("${user.home}/.android/debug.keystore", true, LOCAL),
    KEY_ALIAS("androiddebugkey", true, LOCAL),
    KEY_STORE_PASSWORD("", true, LOCAL),
    KEY_ALIAS_PASSWORD("", true, LOCAL),
    SDK_DIR(Prefs.getAndroidSDKLocation(), true, LOCAL),

    STATUSBARHIDDEN("false"),
    VIEWCONTROLLED_STATUSBAR("false"),
    FILESHARINGENABLED("false"),
    CM_OBJC_SAFEMEMBERS("true"),
    ORIENTATIONS_INITIAL("UIInterfaceOrientationPortrait"),
    ORIENTATIONS_SUPPORTED("UIInterfaceOrientationPortrait:UIInterfaceOrientationLandscapeLeft:UIInterfaceOrientationLandscapeRight"),
    MAIN_STORYBOARD(""),
    LAUNCH_STORYBOARD(""),
    CM_SCREEN_SCALE("DPI"),
    CM_DESKTOP_FRAMEWORK("false"),
    CM_PROJECT("iphone"),
    CM_DESKTOP_SKIN("system-s"),
    CM_KEYBOARD_SUPPORT("quit:pause:back:menu:home:rotate:multitouch"),
    CM_SPLASH_DELAY("2"),

    // The following tags are recalculated inside ParameterList
    MAIN_CLASS("");

    private final Param tag;

    public Param tag() {
        return tag;
    }

    ParamsCommon(String deflt) {
        this(deflt, RUNTIME);
    }

    ParamsCommon(String deflt, TagType type) {
        this(deflt, false, type);
    }

    ParamsCommon(String deflt, boolean ommitIfMissing, TagType type) {
        this.tag = new Param(ommitIfMissing, name().toLowerCase().replace('_', '.'),
                "__" + name() + "__", deflt, null, null, type);
    }

    public static Param getTag(String propName) {
        for (ParamsCommon t : values())
            if (t.tag.name.equals(propName))
                return t.tag;
        return null;
    }
}
