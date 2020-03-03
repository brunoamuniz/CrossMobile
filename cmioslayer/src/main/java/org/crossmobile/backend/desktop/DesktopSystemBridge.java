// (c) 2020 by Panayotis Katsaloulis
// SPDX-License-Identifier: LGPL-3.0-only

package org.crossmobile.backend.desktop;

import crossmobile.ios.uikit.UIAlertView;
import org.crossmobile.bind.system.SystemBridgeExt;

import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

import static org.crossmobile.bind.system.i18n.I18NSelf.ℑ;


public abstract class DesktopSystemBridge implements SystemBridgeExt {

    private static final PrintWriter error;

    static {
        Writer writer = null;
        try {
            writer = new OutputStreamWriter(System.err, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
        }
        error = new PrintWriter(writer);
    }

    @Override
    public void error(String message, Throwable th) {
        if (message != null)
            error.println(message);
        if (th != null)
            th.printStackTrace(error);
        error.flush();
    }

    @Override
    public void debug(String message, Throwable th) {
        if (Debug)
            error(message, th);
    }

    @Override
    public String version() {
        return "1";
    }

    @Override
    public String model() {
        return "Desktop";
    }

    @Override
    public void setKeyboardVisibility(boolean status) {
    }

    @SuppressWarnings("deprecation")
    @Override
    public boolean launchPhoneCall(String phone) {
        new UIAlertView(ℑ("Unsupported protocol"), ℑ("Unable to use phone service") + "\n" + ℑ("Number:") + phone, null, ℑ("Acknowledge")).show();
        return false;
    }
}
