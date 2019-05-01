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
package crossmobile.ios.usernotifications;

import crossmobile.ios.foundation.NSObject;
import crossmobile.ios.foundation.NSSecureCoding;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMGetter;
import org.crossmobile.bridge.ann.CMSelector;

import java.util.List;

@CMClass
public class UNNotificationCategory extends NSObject implements NSSecureCoding {

    private final String identifier;
    private final List<UNNotificationAction> actions;
    private final List<String> intentIdentifiers;
    private final long options;

    UNNotificationCategory(String identifier, List<UNNotificationAction> actions, List<String> intentIdentifiers, long options) {
        this.identifier = identifier;
        this.actions = actions;
        this.intentIdentifiers = intentIdentifiers;
        this.options = options;
    }

    @CMSelector("+ (instancetype)categoryWithIdentifier:(NSString *)identifier \n"
            + "                               actions:(NSArray<UNNotificationAction *> *)actions \n"
            + "                     intentIdentifiers:(NSArray<NSString *> *)intentIdentifiers \n"
            + "                               options:(UNNotificationCategoryOptions)options;")
    public static UNNotificationCategory categoryWithIdentifier(String identifier, List<UNNotificationAction> actions, List<String> intentIdentifiers, long options) {
        return new UNNotificationCategory(identifier, actions, intentIdentifiers, options);
    }

    @CMGetter("@property(readonly, copy, nonatomic) NSString *identifier;")
    public String identifier() {
        return identifier;
    }

    @CMGetter("@property(readonly, copy, nonatomic) NSArray<UNNotificationAction *> *actions;")
    public List<UNNotificationAction> actions() {
        return actions;
    }

    @CMGetter("@property(readonly, copy, nonatomic) NSArray<NSString *> *intentIdentifiers;")
    public List<String> intentIdentifiers() {
        return intentIdentifiers;
    }

    @CMGetter("@property(readonly, nonatomic) UNNotificationCategoryOptions options;")
    public long options() {
        return options;
    }
}
