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
 * UIImageResizingMode class defines different types of rendering the color of
 * an image.
 */
@CMEnum
public final class UIImageRenderingMode {

    /**
     * Automatically select the color of the image
     */
    public static final int Automatic = 0;
    /**
     * Use only original colors
     */
    public static final int AlwaysOriginal = 1;
    /**
     * Use only tinted colors
     */
    public static final int AlwaysTemplate = 2;

    private UIImageRenderingMode() {
    }
}
