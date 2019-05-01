// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIScreen definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class crossmobile_ios_coregraphics_CGRect;

@interface crossmobile_ios_uikit_UIScreen$Ext : UIScreen
@end

#define crossmobile_ios_uikit_UIScreen UIScreen
@interface UIScreen (cm_crossmobile_ios_uikit_UIScreen)
+ (UIScreen*) mainScreen__;
- (instancetype) __init_crossmobile_ios_uikit_UIScreen__;
- (crossmobile_ios_coregraphics_CGRect*) applicationFrame__;
- (crossmobile_ios_coregraphics_CGRect*) bounds__;
- (double) scale__;
@end
