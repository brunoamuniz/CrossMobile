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
package crossmobile.ios.uikit;

import org.crossmobile.bridge.ann.CMEnum;

/**
 * UIControlContentVerticalAlignment class defines different types of vertical
 * alignment for the content within a control element.
 */
@CMEnum
public final class UIControlContentVerticalAlignment {

    /**
     * The content of the control element is vertically center-aligned.
     */
    public static final int Center = 0;

    /**
     * The content of the control element is vertically aligned to the top.
     */
    public static final int Top = 1;

    /**
     * The content of the control element is vertically aligned to the bottom.
     */
    public static final int Bottom = 2;

    /**
     * The content of the control element is vertically aligned so that it fills
     * the rectangle that encloses it.
     */
    public static final int Fill = 3;

    private UIControlContentVerticalAlignment() {
    }
}
