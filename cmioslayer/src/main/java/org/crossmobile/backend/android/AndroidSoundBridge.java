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
package org.crossmobile.backend.android;

import android.content.Context;
import android.os.Vibrator;
import crossmobile.ios.foundation.NSURL;
import org.crossmobile.bind.io.SoundPlayer;
import org.crossmobile.bridge.SoundBridge;

public class AndroidSoundBridge implements SoundBridge {

    @Override
    public SoundPlayer getSoundPlayer(NSURL url, SoundPlayer.Delegate delegate) throws Exception {
        return new AndroidSoundPlayer(url, delegate);
    }

    @Override
    public void vibrate() {
        Vibrator v = (Vibrator) MainActivity.current.getSystemService(Context.VIBRATOR_SERVICE);
        v.vibrate(300);
    }
}
