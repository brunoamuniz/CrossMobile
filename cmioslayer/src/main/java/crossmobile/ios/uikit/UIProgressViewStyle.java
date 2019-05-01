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
 * UIProgressViewStyle class specifies the style of the progress bar.
 */
@CMEnum
public final class UIProgressViewStyle {

    /**
     * The default style of the progress bar.
     */
    public static final int Default = 0;

    /**
     * The style used for a toolbar.
     */
    public static final int Bar = 1;

    private UIProgressViewStyle() {
    }

    static class Colors {

        final int borderColor;
        final int fillColor;
        final int progressColor;

        public Colors(int borderColor, int fillColor, int progressColor) {
            this.borderColor = borderColor;
            this.fillColor = fillColor;
            this.progressColor = progressColor;
        }
    }
}
