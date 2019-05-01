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
package org.crossmobile.bind.wrapper;

import crossmobile.ios.foundation.NSRange;
import crossmobile.ios.uikit.*;
import org.crossmobile.bind.graphics.GraphicsContext;
import org.crossmobile.bind.graphics.NativeFont;
import org.crossmobile.bridge.Native;

public abstract class TextWrapper<IOSWIDG extends UIView, NWIDG extends NativeWrapper<GCX>, GCX extends GraphicsContext> extends WidgetWrapper<IOSWIDG, NWIDG, GCX> {

    public TextWrapper(IOSWIDG tf) {
        super(tf);
    }

    public boolean shouldEndEditing() {
        if (getIOSWidget() instanceof UITextField) {
            UITextField tf = (UITextField) getIOSWidget();
            UITextFieldDelegate del = tf.delegate();
            return del == null || del.shouldReturn(tf);
        } else if (getIOSWidget() instanceof UITextView) {
            UITextView tv = (UITextView) getIOSWidget();
            UITextViewDelegate del = tv.delegate();
            return del == null || del.shouldEndEditing(tv);
        } else
            return false;
    }

    public boolean shouldReplace(int from, int size, String replacement) {
        if (getIOSWidget() instanceof UITextField) {
            UITextField tf = (UITextField) getIOSWidget();
            UITextFieldDelegate del = tf.delegate();
            return del == null || del.shouldChangeCharactersInRange(tf, new NSRange(from, size), replacement);
        } else if (getIOSWidget() instanceof UITextView) {
            UITextView tv = (UITextView) getIOSWidget();
            UITextViewDelegate del = tv.delegate();
            return del == null || del.shouldChangeTextInRange(tv, new NSRange(from, size), replacement);
        } else
            return false;
    }

    public void didBeginEditing() {
        getIOSWidget().becomeFirstResponder();
        if (getIOSWidget() instanceof UITextField) {
            UITextField tf = (UITextField) getIOSWidget();
            tf.sendActionsForControlEvents(UIControlEvents.EditingDidBegin);
            UITextFieldDelegate del = tf.delegate();
            if (del != null)
                del.didBeginEditing(tf);
        } else if (getIOSWidget() instanceof UITextView) {
            UITextView tv = (UITextView) getIOSWidget();
            UITextViewDelegate del = tv.delegate();
            if (del != null)
                del.didBeginEditing(tv);
        }
    }

    public void didChange() {
        if (getIOSWidget() instanceof UITextField)
            ((UITextField) getIOSWidget()).sendActionsForControlEvents(UIControlEvents.EditingChanged);
        else if (getIOSWidget() instanceof UITextView) {
            UITextView tv = (UITextView) getIOSWidget();
            UITextViewDelegate del = tv.delegate();
            if (del != null)
                Native.system().postOnEventThread(() -> del.didChange(tv));
        }
    }

    public void didEndEditing() {
        if (getIOSWidget() instanceof UITextField) {
            UITextField tf = (UITextField) getIOSWidget();
            tf.sendActionsForControlEvents(UIControlEvents.EditingDidEnd);
            UITextFieldDelegate del = tf.delegate();
            if (del != null)
                del.didEndEditing(tf);
        } else if (getIOSWidget() instanceof UITextView) {
            UITextView tv = (UITextView) getIOSWidget();
            UITextViewDelegate del = tv.delegate();
            if (del != null)
                del.didEndEditing(tv);
        }
    }

    public abstract String getText();

    public abstract void setText(String text);

    public abstract NativeFont getFont();

    public abstract void setFont(NativeFont font);

    public abstract int getTextColor();

    public abstract void setTextColor(int color);

    public abstract void setBackgroundColor(int color);

    public abstract int getAlignment();

    public abstract void setAlignment(int alignment);

    public abstract boolean isSecure();

    public abstract void setSecure(boolean secureTextEntry);

    public abstract boolean isEditable();

    public abstract void setEditable(boolean editable);

    public abstract String getPlaceholder();

    public abstract void setPlaceholder(String placeholder);

    public abstract void drawNativeBorder(boolean status);

}
