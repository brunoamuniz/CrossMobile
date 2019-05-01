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
package crossmobile.ios.coreimage;

import crossmobile.ios.coregraphics.CGImage;
import crossmobile.ios.foundation.NSObject;
import crossmobile.ios.foundation.NSSecureCoding;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMConstructor;
import org.crossmobile.bridge.ann.CMGetter;
import org.crossmobile.bridge.ann.CMSelector;

/**
 * CIImage class defines an object that is used by the CIFilter class.
 */
@CMClass
public class CIImage extends NSObject implements NSSecureCoding {

    private final CGImage img;

    /**
     * Constructs and returns an empty CIImage object.
     *
     * @return An empty CIImage object.
     */
    @CMSelector("+ (CIImage *)emptyImage;")
    public static CIImage emptyImage() {
        return new CIImage(null);
    }

    /**
     * Constructs a CIImage object using the specified CGImage.
     *
     * @param img The CGImage object used.
     */
    @CMConstructor("- (instancetype)initWithCGImage:(CGImageRef)image;")
    public CIImage(CGImage img) {
        this.img = img;
    }

    private CIImage() {
        this(null);
    }

    /**
     * Constructs and returns a CGImage object.
     *
     * @return A CGImage object.
     */
    @CMGetter("@property(nonatomic, readonly) CGImageRef CGImage;")
    public CGImage CGImage() {
        return img;
    }

}
