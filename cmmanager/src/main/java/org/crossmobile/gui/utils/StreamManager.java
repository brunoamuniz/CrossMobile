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
package org.crossmobile.gui.utils;

import java.util.ArrayList;
import java.util.Collection;

public class StreamManager {

    private final StreamParser outP;
    private final StreamParser errP;
    private final Collection<StreamListener> listeners = new ArrayList<>();

    private boolean lastIsOut = true;

    public StreamManager() {
        outP = new StreamParser(this::addOutLine, this::rollbackOutLine);
        errP = new StreamParser(this::addErrLine, this::rollbackErrLine);
    }

    public void addListener(StreamListener listener) {
        if (listener != null)
            listeners.add(listener);
    }

    private synchronized void rollbackOutLine(int length) {
        if (lastIsOut)
            for (StreamListener listener : listeners)
                listener.removeChars(length);
        lastIsOut = true;
    }

    private synchronized void rollbackErrLine(int length) {
        if (!lastIsOut)
            for (StreamListener listener : listeners)
                listener.removeChars(length);
        lastIsOut = false;
    }

    private synchronized void addOutLine(CharSequence out, StreamQuality quality) {
        for (StreamListener listener : listeners)
            listener.addLine(out, quality);
        lastIsOut = true;
    }

    private synchronized void addErrLine(CharSequence out, StreamQuality quality) {
        for (StreamListener listener : listeners)
            listener.addLine(out, quality == StreamQuality.BASIC ? StreamQuality.ERROR : quality);
        lastIsOut = false;
    }

    public void incomingOutChar(char c) {
        outP.acceptChar(c);
    }

    public void incomingErrChar(char c) {
        errP.acceptChar(c);
    }

    public void clearListeners() {
        listeners.clear();
    }

}
