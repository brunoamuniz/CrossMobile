// (c) 2020 by Panayotis Katsaloulis
// SPDX-License-Identifier: LGPL-3.0-only

package org.crossmobile.bind.graphics.curve;

public class EaseInCurve implements InterpolationCurve {

    @Override
    public double interpolate(double value) {
        return value * value;
    }
}
