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

import org.crossmobile.bridge.ann.CMClass;
import org.crossmobile.bridge.ann.CMGetter;
import org.crossmobile.bridge.ann.CMSelector;
import org.crossmobile.bridge.ann.CMSetter;

/**
 * NSDateComponents class defines an object that represents a date or an
 * interval as a composition of a variety of distinct elements.
 */
@CMClass
public class NSDateComponents extends NSObject implements NSSecureCoding {

    //kCFCalendarComponentsWrap
    /**
     *
     */
    public final static int Wrap = 1;
    int era;
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
    int week;
    int weekday;
    int weekdayOrdinal;
    int quarter;
    int calendar;
    int timeZone;
    int weekOfMonth;
    int weekOfYear;
    int yearForWeekOfYear;

    /**
     * Returns the number that represents the era of this date object.
     *
     * @return The number that represents the era of this date object.
     */
    @CMGetter("@property NSInteger era;")
    public int era() {
        return era;
    }

    /**
     * Returns the number that represents the year of this date object.
     *
     * @return The number that represents the year of this date object.
     */
    @CMGetter("@property NSInteger year;")
    public int year() {
        return year;
    }

    /**
     * Returns the number that represents the month of this date object.
     *
     * @return The number that represents the month of this date object.
     */
    @CMGetter("@property NSInteger month;")
    public int month() {
        return month;
    }

    /**
     * Returns the number that represents the day of this date object.
     *
     * @return The number that represents the day of this date object.
     */
    @CMGetter("@property NSInteger day;")
    public int day() {
        return day;
    }

    /**
     * Returns the number that represents the hour of this date object.
     *
     * @return The number that represents the hour of this date object.
     */
    @CMGetter("@property NSInteger hour;")
    public int hour() {
        return hour;
    }

    /**
     * Returns the number that represents the minutes of this date object.
     *
     * @return The number that represents the minutes of this date object.
     */
    @CMGetter("@property NSInteger minute;")
    public int minute() {
        return minute;
    }

    /**
     * Returns the number that represents the seconds of this date object.
     *
     * @return The number that represents the seconds of this date object.
     */
    @CMGetter("@property NSInteger second;")
    public int second() {
        return second;
    }

    /**
     * Returns the number that represents the week of this date object.
     *
     * @return The number that represents the week of this date object.
     */
    @Deprecated
    @CMSelector("- (NSInteger)week;")
    public int week() {
        return week;
    }

    /**
     * Returns the number that represents the day of the week of this date object.
     *
     * @return The number that represents the day of the week of this date object.
     */
    @CMGetter("@property NSInteger weekday;")
    public int weekday() {
        return weekday;
    }

    /**
     * Returns the number that represents the ordinal of the day of the week of this date object.
     *
     * @return The number that represents the ordinal of the day of the week of this date object.
     */
    @CMGetter("@property NSInteger weekdayOrdinal;")
    public int weekdayOrdinal() {
        return weekdayOrdinal;
    }

    /**
     * Sets the era for this date object.
     *
     * @param value The era for this date object.
     */
    @CMSetter("@property NSInteger era;")
    public void setEra(int value) {
        this.era = value;
    }

    /**
     * Sets the year for this date object.
     *
     * @param value The year for this date object.
     */
    @CMSetter("@property NSInteger year;")
    public void setYear(int value) {
        this.year = value;
    }

    /**
     * Sets the month for this date object.
     *
     * @param value The month for this date object.
     */
    @CMSetter("@property NSInteger month;")
    public void setMonth(int value) {
        this.month = value;
    }

    /**
     * Sets the day for this date object.
     *
     * @param value The day for this date object.
     */
    @CMSetter("@property NSInteger day;")
    public void setDay(int value) {
        this.day = value;
    }

    /**
     * Sets the hour for this date object.
     *
     * @param value The hour for this date object.
     */
    @CMSetter("@property NSInteger hour;")
    public void setHour(int value) {
        this.hour = value;
    }

    /**
     * Sets the minutes for this date object.
     *
     * @param value The minutes for this date object.
     */
    @CMSetter("@property NSInteger minute;")
    public void setMinute(int value) {
        this.minute = value;
    }

    /**
     * Sets the seconds for this date object.
     *
     * @param value The seconds for this date object.
     */
    @CMSetter("@property NSInteger second;")
    public void setSecond(int value) {
        this.second = value;
    }

    /**
     * Sets the week for this date object.
     *
     * @param value The week for this date object.
     */
    @Deprecated
    @CMSelector("- (void)setWeek:(NSInteger)v;")
    public void setWeek(int value) {
        this.week = value;
    }

    /**
     * Sets the day of the week for this date object.
     *
     * @param value The day of the week for this date object.
     */
    @CMSetter("@property NSInteger weekday;")
    public void setWeekday(int value) {
        this.weekday = value;
    }

    /**
     * Sets the ordinal of the day of the week for this date object.
     *
     * @param value The ordinal of the day of the week for this date object.
     */
    @CMSetter("@property NSInteger weekdayOrdinal;")
    public void setWeekdayOrdinal(int value) {
        this.weekdayOrdinal = value;
    }
}
