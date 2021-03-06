/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.bridge;

import org.crossmobile.bridge.resolver.AndroidBridgeResolver;
import org.crossmobile.bridge.resolver.ForeignResolver;
import org.crossmobile.bridge.resolver.SwingBridgeResolver;

import java.io.InputStreamReader;
import java.util.Properties;

import static org.crossmobile.bridge.system.LauncherCommons.OUTPUT_FILE;
import static org.crossmobile.bridge.system.LauncherCommons.OUTPUT_PACKAGE;

/**
 * Native bridge and method factory
 */
@SuppressWarnings({"UseSpecificCatch"})
public abstract class Native {

    private static final boolean runsUnderAndroid;
    private static boolean alreadyEarlyInitialized = false;
    private static Native bridge;

    private ImageBridge image;
    private SystemBridge system;
    private FileBridge file;
    private LifecycleBridge lifecycle;
    private GraphicsBridge graphics;
    private SoundBridge sound;
    private WrapperBridge widget;
    private WrapperMapBridge map;
    private InAppBridge inapp;
    private LocationBridge location;
    private NetworkBridge network;
    private SocialBridge social;
    private UIGuidelinesBridge uiguidelines;
    private NotificationBridge notification;
    private ShareBridge share;
    private SecurityBridge security;
    private MessageBridge message;


    static {
        runsUnderAndroid = System.getProperty("java.vm.specification.vendor", "").toLowerCase().contains("android")
                || System.getProperty("java.vm.vendor.url", "").toLowerCase().contains("android")
                || System.getProperty("java.vendor.url", "").toLowerCase().contains("android")
                || System.getProperty("java.vm.name", "").toLowerCase().contains("dalvik")
                || System.getProperty("java.specification.name", "").toLowerCase().contains("dalvik")
                || System.getProperty("java.vm.specification.name", "").toLowerCase().contains("dalvik");
    }

    public static boolean isAndroid() {
        return runsUnderAndroid;
    }

    public static boolean isDesktop() {
        return !runsUnderAndroid;
    }

    public static void prepare(Object context) {
        if (!alreadyEarlyInitialized)
            try {
                alreadyEarlyInitialized = true;
                Class.forName("org.crossmobile.sys.PluginsLauncherList").getMethod("earlyInitialize", Object.class).invoke(null, context);
            } catch (Exception ex) {
                Native.system().error("Unable to early initialize plugins", ex);
            }
    }

    public static void destroy() {
        bridge = null;
    }

    private static Native bridge() {
        if (bridge == null)
            if (runsUnderAndroid)
                bridge = AndroidBridgeResolver.resolve();
            else {
                Properties props = new Properties();
                String flavour = "";
                try {
                    props.load(new InputStreamReader(Native.class.getResourceAsStream("/" + OUTPUT_PACKAGE + "/" + OUTPUT_FILE), "UTF-8"));
                    flavour = props.getProperty("flavour", "").toLowerCase().trim();
                } catch (Exception ex) {
                    System.err.println("Unable to read CrossMobile launch properties: " + ex.toString());
                }
                switch (flavour) {
                    case "desktop":
                        bridge = SwingBridgeResolver.resolve();
                        break;
                    case "ios":
                    case "android":
                    case "uwp":
                        ForeignResolver.launch(props, flavour);
                        break;  // will never come here
                    default:
                        if (flavour.isEmpty())
                            throw new RuntimeException("Platform target not set");
                        else
                            throw new RuntimeException("Unable to recognize target '" + flavour + "'");
                }
            }
        return bridge;
    }

    public static LifecycleBridge lifecycle() {
        if (bridge().lifecycle == null)         // WARNING: NEEDS TO BE A METHOD CALL. It's the first to call after prepare
            bridge.lifecycle = bridge.initLifecycle();
        return bridge.lifecycle;
    }

    public static ImageBridge image() {
        if (bridge().image == null)
            bridge.image = bridge.initImage();
        return bridge.image;
    }

    public static SystemBridge system() {
        if (bridge().system == null)
            bridge.system = bridge.initSystem();
        return bridge.system;
    }

    public static FileBridge file() {
        if (bridge().file == null)
            bridge.file = bridge.initFile();
        return bridge.file;
    }

    public static GraphicsBridge graphics() {
        if (bridge().graphics == null)
            bridge.graphics = bridge.initGraphics();
        return bridge.graphics;
    }

    public static SoundBridge sound() {
        if (bridge().sound == null)
            bridge.sound = bridge.initSound();
        return bridge.sound;
    }

    public static WrapperBridge widget() {
        if (bridge().widget == null)
            bridge.widget = bridge.initWidget();
        return bridge.widget;
    }

    public static WrapperMapBridge mapWidget() {
        if (bridge().map == null)
            bridge.map = bridge().initMapWidget();
        return bridge.map;
    }

    public static InAppBridge inapp() {
        if (bridge().inapp == null)
            bridge.inapp = bridge.initInApp();
        return bridge.inapp;
    }

    public static LocationBridge location() {
        if (bridge().location == null)
            bridge.location = bridge.initLocation();
        return bridge.location;
    }

    public static NetworkBridge network() {
        if (bridge().network == null)
            bridge.network = bridge.initNetwork();
        return bridge.network;
    }

    public static SocialBridge social() {
        if (bridge().social == null)
            bridge.social = bridge.initSocial();
        return bridge.social;
    }

    public static UIGuidelinesBridge uiguidelines() {
        if (bridge().uiguidelines == null)
            bridge.uiguidelines = bridge.initUIGuidelines();
        return bridge.uiguidelines;
    }

    public static NotificationBridge notification() {
        if (bridge().notification == null)
            bridge.notification = bridge.initNotification();
        return bridge.notification;
    }

    public static ShareBridge share() {
        if (bridge().share == null)
            bridge.share = bridge.initShare();
        return bridge.share;

    }

    public static SecurityBridge security() {
        if (bridge().security == null)
            bridge.security = bridge.initSecurity();
        return bridge.security;
    }

    public static MessageBridge message() {
        if (bridge().message == null)
            bridge.message = bridge.initMessage();
        return bridge.message;
    }


    protected abstract WrapperMapBridge initMapWidget();

    protected abstract MessageBridge initMessage();

    protected abstract ImageBridge initImage();

    protected abstract SystemBridge initSystem();

    protected abstract LifecycleBridge initLifecycle();

    protected abstract GraphicsBridge initGraphics();

    protected abstract SoundBridge initSound();

    protected abstract WrapperBridge initWidget();

    protected abstract FileBridge initFile();

    protected abstract InAppBridge initInApp();

    protected abstract LocationBridge initLocation();

    protected abstract NetworkBridge initNetwork();

    protected abstract SocialBridge initSocial();

    protected abstract UIGuidelinesBridge initUIGuidelines();

    protected abstract NotificationBridge initNotification();

    protected abstract ShareBridge initShare();

    protected abstract SecurityBridge initSecurity();
}
