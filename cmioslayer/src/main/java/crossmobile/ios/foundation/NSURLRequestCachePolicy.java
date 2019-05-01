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
package crossmobile.ios.foundation;

import org.crossmobile.bridge.ann.CMEnum;

/**
 * NSURLRequestCachePolicy class defines different types of cache policies
 * concerning the URL requests.
 */
@CMEnum
public final class NSURLRequestCachePolicy {

    /**
     * The cache policy is defined in the protocol implementation and used for
     * special requests.
     */
    public static final int UseProtocolCachePolicy = 0;

    /**
     * The requested data is reloaded.
     */
    public static final int ReloadIgnoringLocalCacheData = 1;

    /**
     * The requested data is reloaded and proxies ignore cache data.
     */
    public static final int ReloadIgnoringLocalAndRemoteCacheData = 4;

    /**
     * The requested data is reloaded regardless of cache.
     */
    public static final int ReloadIgnoringCacheData = ReloadIgnoringLocalCacheData;

    /**
     * The data that are stored in cache are used without checking the
     * expiration date. If there is no data in cache, then the data is reloaded.
     */
    public static final int ReturnCacheDataElseLoad = 2;

    /**
     * The data that are stored in cache are used without checking the
     * expiration date. If there is no data then no attempt to reload the data
     * is made.
     */
    public static final int ReturnCacheDataDontLoad = 3;

    /**
     * The data that are stored in cache are used if they are valid otherwise
     * they are reloaded.
     */
    public static final int ReloadRevalidatingCacheData = 5;

    private NSURLRequestCachePolicy() {
    }
}
