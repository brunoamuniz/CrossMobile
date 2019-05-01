// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIPinchGestureRecognizer definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol crossmobile_ios_foundation_NSSelector;
@class java_lang_reflect_Method;

CM_EXPORT_CLASS
@interface crossmobile_ios_uikit_UIPinchGestureRecognizer$Ext : UIPinchGestureRecognizer
@end

#define crossmobile_ios_uikit_UIPinchGestureRecognizer UIPinchGestureRecognizer
@interface UIPinchGestureRecognizer (cm_crossmobile_ios_uikit_UIPinchGestureRecognizer)
- (instancetype) __init_crossmobile_ios_uikit_UIPinchGestureRecognizer___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target ;
- (void) setScale___double:(double) scale ;
- (double) scale__;
- (double) velocity__;
@end
