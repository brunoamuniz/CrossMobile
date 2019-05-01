// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIPickerViewDataSource definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class crossmobile_ios_uikit_UIPickerView;

@protocol crossmobile_ios_uikit_UIPickerViewDataSource
- (int) numberOfComponentsInPickerView___crossmobile_ios_uikit_UIPickerView:(UIPickerView*) pickerView ;
- (int) numberOfRowsInComponent___crossmobile_ios_uikit_UIPickerView_int:(UIPickerView*) pickerView :(int) component ;
@end
