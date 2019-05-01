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

import crossmobile.ios.foundation.NSError;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMSelector;

/**
 * MKReverseGeocoderDelegate interface is the delegate responsible to
 * collaborate with MKReverseGeocoder objects.
 */
@Deprecated
@CMClass
public interface MKReverseGeocoderDelegate {

    /**
     * It is used in order to handle the failure of reverse-geocodering.
     *
     * @param p1 The MKReverseGeocoder object that corresponds to this delegate.
     * @param p2 The error that caused failure.
     */
    @Deprecated
    @CMSelector("- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error;")
    public void didFailWithError(MKReverseGeocoder p1, NSError p2);

    /**
     * It is used in order to handle the successful reverse-geocodering.
     *
     * @param p1 The MKReverseGeocoder object that corresponds to this delegate.
     * @param p2 The place mark that is the result of the reverse-geocodering.
     */
    @Deprecated
    @CMSelector("- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark;")
    public void didFindPlacemark(MKReverseGeocoder p1, MKPlacemark p2);
}
