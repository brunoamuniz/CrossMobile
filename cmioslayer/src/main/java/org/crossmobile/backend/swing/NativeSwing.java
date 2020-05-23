/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.backend.swing;

import org.crossmobile.backend.desktop.NativeDesktop;
import org.crossmobile.bridge.*;

public class NativeSwing extends NativeDesktop {

    @Override
    protected WrapperMapBridge initMapWidget() {
        return new SwingWrapperMapBridge();
    }

    @Override
    protected ImageBridge initImage() {
        return new SwingImageBridge();
    }

    @Override
    protected SystemBridge initSystem() {
        return new SwingSystemBridge();
    }

    @Override
    protected LifecycleBridge initLifecycle() {
        return new SwingLifecycleBridge();
    }

    @Override
    protected GraphicsBridge initGraphics() {
        return new SwingGraphicsBridge();
    }

    @Override
    protected WrapperBridge initWidget() {
        return new SwingWrapperBridge();
    }
}
