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

import org.crossmobile.bridge.Native;
import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMGetter;
import org.crossmobile.bridge.ann.CMSelector;
import org.crossmobile.bridge.ann.CMSetter;

import java.net.CookiePolicy;
import java.net.HttpCookie;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

/**
 * NSHTTPCookieStorage class defines a singleton object that is responsible for
 * the NSHTTPCookies' storage.
 */
@CMClass
public class NSHTTPCookieStorage extends NSObject {

    private static final NSHTTPCookieStorage sharedHTTPCookieStorage = new NSHTTPCookieStorage();

    private int cookieAcceptPolicy = NSHTTPCookieAcceptPolicy.Always;

    private NSHTTPCookieStorage() {
    }

    /**
     * Returns the shared NSHTTPCookieStorage instance.
     *
     * @return The shared NSHTTPCookieStorage instance.
     */
    @CMSelector("+ (NSHTTPCookieStorage *)sharedHTTPCookieStorage;")
    public static NSHTTPCookieStorage sharedHTTPCookieStorage() {
        return sharedHTTPCookieStorage;
    }

    /**
     * Returns the cookie accept policy of the NSHTTPCookieStorage.
     *
     * @return The cookie accept policy of the NSHTTPCookieStorage.
     * @see crossmobile.ios.foundation.NSHTTPCookieAcceptPolicy
     */
    @CMGetter("@property NSHTTPCookieAcceptPolicy cookieAcceptPolicy;")
    public int cookieAcceptPolicy() {
        return cookieAcceptPolicy;
    }

    /**
     * Sets the cookie accept policy for the NSHTTPCookieStorage.
     *
     * @param cookieAcceptPolicy The cookie accept policy of the
     *                           NSHTTPCookieStorage.
     * @see crossmobile.ios.foundation.NSHTTPCookieAcceptPolicy
     */
    @CMSetter("@property NSHTTPCookieAcceptPolicy cookieAcceptPolicy;")
    public void setCookieAcceptPolicy(int cookieAcceptPolicy) {
        this.cookieAcceptPolicy = cookieAcceptPolicy;
        Native.network().setCookiePolicy(
                cookieAcceptPolicy == NSHTTPCookieAcceptPolicy.Always ? CookiePolicy.ACCEPT_ALL
                        : (cookieAcceptPolicy == NSHTTPCookieAcceptPolicy.OnlyFromMainDocumentDomain ? CookiePolicy.ACCEPT_ORIGINAL_SERVER
                        : CookiePolicy.ACCEPT_NONE));

    }

    /**
     * Deletes the specified cookie from the NSHTTPCookieStorage.
     *
     * @param cookie The cookie to be deleted from the NSHTTPCookieStorage.
     */
    @CMSelector("- (void)deleteCookie:(NSHTTPCookie *)cookie;")
    public void deleteCookie(NSHTTPCookie cookie) {
        Native.network().deleteCookie(cookie.getURI(), cookie.ncookie);
    }

    /**
     * Stores the specified cookie to the NSHTTPCookieStorage.
     *
     * @param cookie The cookie to be added to the NSHTTPCookieStorage.
     */
    @CMSelector("- (void)setCookie:(NSHTTPCookie *)cookie;")
    public void setCookie(NSHTTPCookie cookie) {
        Native.network().setCookie(cookie.getURI(), cookie.ncookie);
    }

    /**
     * Add a list of cookies of a URL to the NSHTTPCookieStorage.
     *
     * @param cookies         The list of cookies to be added.
     * @param url             The URL of the cookies.
     * @param mainDocumentURL The URL of the main HTML document.
     */
    @CMSelector("- (void)setCookies:(NSArray<NSHTTPCookie *> *)cookies \n"
            + "            forURL:(NSURL *)URL \n"
            + "   mainDocumentURL:(NSURL *)mainDocumentURL;")
    public void setCookies(List<NSHTTPCookie> cookies, NSURL url, NSURL mainDocumentURL) {
        Native.lifecycle().notImplemented();
    }

    /**
     * Returns a list with the stored cookies.
     *
     * @return The list of the stored cookies.
     */
    @CMGetter("@property(readonly, copy) NSArray<NSHTTPCookie *> *cookies;\n"
            + "")
    public List<NSHTTPCookie> cookies() {
        List<NSHTTPCookie> result = new ArrayList<NSHTTPCookie>();
        for (HttpCookie cookie : Native.network().getCookies(null))
            result.add(new NSHTTPCookie(cookie));
        return result;
    }

    /**
     * Returns the list with the stored cookies for the specified URL.
     *
     * @param url The URL for which the stored cookies are requested.
     * @return The list of the stored cookies for the specified URL.
     */
    @CMSelector("- (NSArray<NSHTTPCookie *> *)cookiesForURL:(NSURL *)URL;")
    public List<NSHTTPCookie> cookiesForURL(NSURL url) {
        List<NSHTTPCookie> result = new ArrayList<NSHTTPCookie>();
        for (HttpCookie cookie : Native.network().getCookies(URI.create(url.absoluteString())))
            result.add(new NSHTTPCookie(cookie));
        return result;
    }
}
