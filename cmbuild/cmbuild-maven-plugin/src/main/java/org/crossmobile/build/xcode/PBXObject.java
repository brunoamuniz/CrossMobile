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

import com.dd.plist.NSDictionary;

import static org.crossmobile.build.utils.PlistUtils.getPath;

public abstract class PBXObject {

    public final String id;
    public final String isa;

    public PBXObject(String id, NSDictionary data) {
        this.id = id;
        this.isa = getPath(data, "isa").toString();
    }

    public abstract NSDictionary getData();

    public String getId() {
        return id;
    }
}
