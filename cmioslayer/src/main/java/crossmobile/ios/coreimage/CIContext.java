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
import crossmobile.ios.coregraphics.CGRect;
import crossmobile.ios.foundation.NSObject;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMSelector;

/**
 * CIContext class defines an object that is used with CIFilter objects in order
 * to manage CIImages.
 */
@CMClass
public class CIContext extends NSObject {

    /**
     * Creates a new CIContext object with default options.
     *
     * @return A new CIContext object.
     */
    @CMSelector("+ (CIContext *)context;")
    public static CIContext context() {
        return new CIContext();
    }

    private CIContext() {
    }

    /**
     * Constructs and returns a new CGImage object using the specified rectangle
     * area of the specified image.
     *
     * @param image    The CIImage used for the new CGImage object.
     * @param fromRect The rectangle area of the given CIImage object.
     * @return The CGImage that is created.
     */
    @CMSelector("- (CGImageRef)createCGImage:(CIImage *)image \n"
            + "                   fromRect:(CGRect)fromRect;")
    public CGImage createCGImage(CIImage image, CGRect fromRect) {
        return null;
    }
}
