/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.bridge;

import org.crossmobile.bridge.ann.CMLib;
import org.crossmobile.bridge.ann.CMLibTarget;

@CMLib(name = "cmioslayer", target = CMLibTarget.RUNTIME_PLUGIN)
public interface CrossMobilePlugin {

    default void initialize() {
    }

    default void earlyInitialize(Object context) {
    }
}
