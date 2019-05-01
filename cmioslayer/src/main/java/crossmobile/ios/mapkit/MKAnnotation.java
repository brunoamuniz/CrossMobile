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
package crossmobile.ios.mapkit;

import crossmobile.ios.corelocation.CLLocationCoordinate2D;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMGetter;
import org.crossmobile.bridge.ann.CMSelector;

/**
 * MKAnnotation class defines an object that represents annotation information
 * displayed on a map view.
 */
@CMClass
public interface MKAnnotation {

    /**
     * Define the central point of the annotation.
     *
     * @return The central point as a coordinate.
     */
    @CMGetter("@property(nonatomic, readonly) CLLocationCoordinate2D coordinate")
    public abstract CLLocationCoordinate2D coordinate();

    /**
     * Sets the annotation center's coordinates on the map view.
     *
     * @param newCoordinate The annotation center's coordinates on the map view.
     */
    @CMSelector("- (void)setCoordinate:(CLLocationCoordinate2D) newCoordinate")
    public default void setCoordinate(CLLocationCoordinate2D newCoordinate) {
    }

    /**
     * Returns the title of the annotation on the map view.
     *
     * @return The title of the annotation on the map view.
     */
    @CMGetter("@property(nonatomic, readonly, copy) NSString *title")
    public default String title() {
        return "";
    }

    /**
     * Returns the subtitle of the annotation on the map view.
     *
     * @return The subtitle of the annotation on the map view.
     */
    @CMGetter("@property(nonatomic, readonly, copy) NSString *subtitle")
    public default String subtitle() {
        return "";
    }
}
