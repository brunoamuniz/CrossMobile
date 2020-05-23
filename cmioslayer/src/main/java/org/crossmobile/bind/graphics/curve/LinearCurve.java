/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.bind.graphics.curve;

public class LinearCurve implements InterpolationCurve {

    @Override
    public double interpolate(double value) {
        return value;
    }
}
