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
package crossmobile.ios.foundation;

import org.crossmobile.bridge.ann.CMEnum;

/**
 * NSLineBreakMode class defines different line break styles to apply when a
 * line is longer its container.
 */
@CMEnum
public final class NSLineBreakMode {

    /**
     * The line is wrapped so that words are displayed unaltered.
     */
    public static final int ByWordWrapping = 0;

    /**
     * The line wrapped before the first character that doesn't fit.
     */
    public static final int ByCharWrapping = 1;

    /**
     * Draws line only within the text container.
     */
    public static final int ByClipping = 2;

    /**
     * The end of the line is displayed.
     */
    public static final int ByTruncatingHead = 3;

    /**
     * The beginning of the line is displayed.
     */
    public static final int ByTruncatingTail = 4;

    /**
     * The beginning and the end of the line is displayed.
     */
    public static final int ByTruncatingMiddle = 5;

    private NSLineBreakMode() {
    }
}
