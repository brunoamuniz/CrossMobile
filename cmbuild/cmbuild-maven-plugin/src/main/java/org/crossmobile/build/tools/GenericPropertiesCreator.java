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
package org.crossmobile.build.tools;

import org.crossmobile.build.ng.CMBuildEnvironment;
import org.crossmobile.utils.FileUtils;

import java.io.File;
import java.util.Properties;

public abstract class GenericPropertiesCreator {

    private final File output;
    protected final File projectpath;
    private final Properties prop;

    public GenericPropertiesCreator(Properties properties, File projectpath, File output) {
        this.output = output;
        this.projectpath = projectpath;
        this.prop = properties;
        output.getParentFile().mkdirs();
    }

    protected String prop(String property) {
        String val = prop.getProperty(property);
        if (val == null)
            throw new RuntimeException("Unable to find property " + property);
        return val;
    }

    protected void write(Object data) {
        FileUtils.write(output, data.toString());
    }

    public abstract void execute(CMBuildEnvironment env);

}
