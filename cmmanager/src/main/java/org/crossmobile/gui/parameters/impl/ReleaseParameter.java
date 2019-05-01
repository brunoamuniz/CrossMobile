/* (c) 2019 by Panayotis Katsaloulis
 *
 * CrossMobile is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 2.
 *
 * CrossMobile is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with CrossMobile; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.crossmobile.gui.parameters.impl;

import org.crossmobile.gui.parameters.RadioParameter;
import org.crossmobile.gui.utils.LaunchType;
import org.crossmobile.utils.ParamList;

public class ReleaseParameter extends RadioParameter {

    public ReleaseParameter(ParamList list, LaunchType defaultType) {
        super(list, null,
                new String[]{"images/debug", "images/xray", "images/release"},
                new String[]{"Debug profile", "XRay profile", "Release profile"},
                new String[]{"debug", "xray", "release"},
                defaultType.name().toLowerCase(), false);
    }


    @Override
    protected String getVisualTag() {
        return "Profile selection";
    }

    @Override
    public boolean shouldTrackChanges() {
        return false;
    }
}
