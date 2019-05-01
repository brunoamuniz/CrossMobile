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

import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMSelector;

/**
 * UINavigationControllerDelegate interface is the delegate responsible for
 * receiving and handling notifications from the UINavigationController.
 */
@CMClass
public interface UINavigationControllerDelegate {

    /**
     * It is used before navigation controller displays the view controller's
     * view.
     *
     * @param navigationController The navigation controller that corresponds to
     *                             this delegate.
     * @param viewController       The related view controller.
     * @param animated             Boolean that defines whether the change will be animated.
     */
    @CMSelector("- (void)navigationController:(UINavigationController *)navigationController \n"
            + "      willShowViewController:(UIViewController *)viewController \n"
            + "                    animated:(BOOL)animated;")
    public default void willShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated) {
    }

    /**
     * It is used after the navigation controller displays the view controller's
     * view.
     *
     * @param navigationController The navigation controller that corresponds to
     *                             this delegate.
     * @param viewController       The related view controller.
     * @param animated             Boolean that defines whether the change will be animated.
     */
    @CMSelector("- (void)navigationController:(UINavigationController *)navigationController \n"
            + "       didShowViewController:(UIViewController *)viewController \n"
            + "                    animated:(BOOL)animated;")
    public default void didShowViewController(UINavigationController navigationController, UIViewController viewController, boolean animated) {
    }
}
