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
package crossmobile.ios.accounts;

import org.crossmobile.bridge.ann.CMEnum;

/**
 * ACErrorCode class defines different types of errors related to accessing
 * accounts.
 */
@CMEnum
public final class ACErrorCode {

    /**
     * Unknown error occurred.
     */
    public static final int Unknown = 1;

    /**
     * Unsaved account due to missing property.
     */
    public static final int AccountMissingRequiredProperty = 2;

    /**
     * Unsaved account due to authentication credential failure.
     */
    public static final int AccountAuthenticationFailed = 3;

    /**
     * Unsaved account due to invalid account type.
     */
    public static final int AccountTypeInvalid = 4;

    /**
     * Account already exists.
     */
    public static final int AccountAlreadyExists = 5;

    /**
     * Account could not be found to be deleted.
     */
    public static final int AccountNotFound = 6;

    /**
     * Permission denied to application.
     */
    public static final int PermissionDenied = 7;

    /**
     * Incorrect or missing values to information dictionary.
     */
    public static final int AccessInfoInvalid = 8;

    private ACErrorCode() {
    }
}
