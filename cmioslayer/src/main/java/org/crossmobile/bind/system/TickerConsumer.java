/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.bind.system;

public interface TickerConsumer {

    public void start();

    public void apply(double progress);

    public void end();
}
