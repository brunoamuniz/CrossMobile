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
package org.crossmobile.build.xcode;

import com.dd.plist.NSArray;
import com.dd.plist.NSDictionary;
import com.dd.plist.NSString;

import java.util.Collection;

import static org.crossmobile.build.utils.PlistUtils.arrayToCollection;
import static org.crossmobile.build.utils.PlistUtils.getPath;

public class XCConfigurationList extends PBXAny {

    public final Collection<String> buildConfigurations;

    public XCConfigurationList(String id, XCBuildConfiguration... configurations) {
        this(id, getConfigData(configurations));
    }

    public XCConfigurationList(String id, NSDictionary data) {
        super(id, data);
        buildConfigurations = arrayToCollection((NSArray) getPath(data, "buildConfigurations"));
    }

    private static NSDictionary getConfigData(XCBuildConfiguration[] configurations) {
        NSDictionary data = new NSDictionary();
        data.put("isa", "XCConfigurationList");

        NSString[] configs = new NSString[configurations.length];
        for (int i = 0; i < configurations.length; i++)
            configs[i] = new NSString(configurations[i].id);
        data.put("buildConfigurations", new NSArray(configs));
        data.put("defaultConfigurationIsVisible", "0");
        data.put("defaultConfigurationName", configurations[0].name);

        return data;
    }
}
