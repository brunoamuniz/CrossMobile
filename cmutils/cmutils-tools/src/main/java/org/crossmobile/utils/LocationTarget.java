/*
 * (c) 2020 by Panayotis Katsaloulis
 *
 * SPDX-License-Identifier: LGPL-3.0-only
 */

package org.crossmobile.utils;

import org.crossmobile.utils.SystemDependent.Execs;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.function.Consumer;

public class LocationTarget {

    private final String appName;
    private final Collection<LocationEntry> paths = new ArrayList<>();

    public LocationTarget(Execs exec) {
        this(exec, (String[]) null);
    }

    public LocationTarget(String... morePaths) {
        this(null, morePaths);
    }

    public LocationTarget(Execs exec, String... morePaths) {
        this.appName = exec == null ? null : exec.name().toLowerCase();
        if (appName != null)
            paths.add(new LocationEntry(appName, false));
        if (morePaths != null && morePaths.length > 0)
            for (String path : morePaths)
                paths.add(new LocationEntry(path, exec == null));
    }

    public LocationRequest makeRequest(String oldLocation, Consumer<File> foundFile) {
        return new LocationRequest(this, oldLocation, foundFile);
    }

    public LocationRequest makeRequest(Consumer<File> foundFile) {
        return makeRequest(null, foundFile);
    }

    String getApplicationName() {
        return appName;
    }

    void checkFile(File file, Consumer<File> foundFile) {
        for (LocationEntry entry : paths) {
            File found = entry.matches(file);
            if (found != null)
                foundFile.accept(found);
        }
    }

    private static class LocationEntry {
        private final String[] fileParts;
        private final boolean asContainer;

        private LocationEntry(String path, boolean asContainer) {
            fileParts = path.split("/");
            this.asContainer = asContainer;
        }

        private File matches(File file) {
            File orig = file;
            for (int i = fileParts.length - 1; i >= 0; i--) {
                if (file == null || !fileParts[i].equals(file.getName().toLowerCase()))
                    return null;
                orig = file;
                file = file.getParentFile();
            }
            return asContainer ? file : orig;
        }
    }
}