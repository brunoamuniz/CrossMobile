// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIMutableUserNotificationCategory definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class java_lang_String;
@protocol java_util_List;

CM_EXPORT_CLASS
@interface crossmobile_ios_uikit_UIMutableUserNotificationCategory$Ext : UIMutableUserNotificationCategory
@end

#define crossmobile_ios_uikit_UIMutableUserNotificationCategory UIMutableUserNotificationCategory
@interface UIMutableUserNotificationCategory (cm_crossmobile_ios_uikit_UIMutableUserNotificationCategory)
- (instancetype) __init_crossmobile_ios_uikit_UIMutableUserNotificationCategory__;
- (void) setIdentifier___java_lang_String:(NSString*) identifier ;
- (void) setActions___java_util_List_int:(NSArray*) actions :(int) context ;
@end
