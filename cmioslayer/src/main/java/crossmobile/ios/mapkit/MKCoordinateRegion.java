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
import org.crossmobile.bridge.ann.*;

/**
 * MKCoordinateRegion class defines an object that represents the part of the
 * map that is displayed.
 */
@CMStruct({"center", "span"})
public final class MKCoordinateRegion {

    /**
     * The center of the displayed area.
     */
    private CLLocationCoordinate2D center;

    /**
     * The portion of the map that is displayed.
     */
    private MKCoordinateSpan span;

    /**
     * Constructs an object with the specified parameters.
     *
     * @param center The center of the displayed area.
     * @param span   The portion of the map that is displayed.
     */
    @CMConstructor(" MKCoordinateRegion MKCoordinateRegionMake ( CLLocationCoordinate2D centerCoordinate, MKCoordinateSpan span ); ")
    public MKCoordinateRegion(@CMRef("center") CLLocationCoordinate2D center, @CMRef("span") MKCoordinateSpan span) {
        this.center = center;
        this.span = span;
    }

    @CMGetter("CLLocationCoordinate2D center;")
    public CLLocationCoordinate2D getCenter() {
        return center;
    }

    @CMSetter("CLLocationCoordinate2D center;")
    public void setCenter(CLLocationCoordinate2D center) {
        this.center.setLatitude(center.getLatitude());
        this.center.setLongitude(center.getLongitude());
    }

    @CMGetter("MKCoordinateSpan span;")
    public MKCoordinateSpan getSpan() {
        return span;
    }

    @CMSetter("MKCoordinateSpan span;")
    public void setSpan(MKCoordinateSpan span) {
        this.span.set(span);
    }
}
