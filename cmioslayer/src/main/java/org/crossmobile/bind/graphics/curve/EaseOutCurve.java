/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.bind.graphics.curve;

public class EaseOutCurve implements InterpolationCurve {

    @Override
    public double interpolate(double value) {
        value = 1 - value;
        value = value * value;
        return 1 - value;
    }
}
