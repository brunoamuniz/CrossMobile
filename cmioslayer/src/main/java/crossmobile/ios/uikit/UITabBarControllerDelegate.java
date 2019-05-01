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

import java.util.List;

/**
 * UITabBarControllerDelegate interface is the delegate that cooperates with the
 * UITabBarController.
 */
@CMClass
public interface UITabBarControllerDelegate {

    /**
     * It is used in order to control the activation of the specified view
     * controller after a tap on the bar.
     *
     * @param controller The tab bar controller that corresponds to this
     *                   delegate.
     * @param view       The view controller to be activated.
     * @return TRUE to be activated.
     */
    @CMSelector("- (BOOL)tabBarController:(UITabBarController *)tabBarController \n"
            + "shouldSelectViewController:(UIViewController *)viewController;")
    public default boolean shouldSelectViewController(UITabBarController controller, UIViewController view) {
        return true;
    }

    /**
     * It is used in order to handle the selection of an item on the tab bar.
     *
     * @param controller The tab bar controller that corresponds to this
     *                   delegate.
     * @param view       The view controller of the selected item.
     */
    @CMSelector("- (void)tabBarController:(UITabBarController *)tabBarController \n"
            + " didSelectViewController:(UIViewController *)viewController;")
    public default void didSelectViewController(UITabBarController controller, UIViewController view) {
    }

    /**
     * It is used before the customization sheet is displayed.
     *
     * @param controller The tab bar controller that corresponds to this
     *                   delegate.
     * @param view       The view controllers of the customization sheet.
     */
    @CMSelector("- (void)tabBarController:(UITabBarController *)tabBarController \n"
            + "willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers;")
    public default void willBeginCustomizingViewControllers(UITabBarController controller, List<UIViewController> view) {
    }

    /**
     * It is used before the dismissal of the customization sheet.
     *
     * @param controller The tab bar controller that corresponds to this
     *                   delegate.
     * @param view       The view controllers of the customization sheet.
     * @param changed    TRUE if items of the tab bar changed.
     */
    @CMSelector("- (void)tabBarController:(UITabBarController *)tabBarController \n"
            + "willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers \n"
            + "                 changed:(BOOL)changed;")
    public default void willEndCustomizingViewControllers(UITabBarController controller, List<UIViewController> view, boolean changed) {
    }

    /**
     * It is used after the dismissal of the customization sheet.
     *
     * @param controller The tab bar controller that corresponds to this
     *                   delegate.
     * @param view       The view controllers of the customization sheet.
     * @param changed    TRUE if items of the tab bar changed.
     */
    @CMSelector("- (void)tabBarController:(UITabBarController *)tabBarController \n"
            + "didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers \n"
            + "                 changed:(BOOL)changed;")
    public default void didEndCustomizingViewControllers(UITabBarController controller, List<UIViewController> view, boolean changed) {
    }
}
