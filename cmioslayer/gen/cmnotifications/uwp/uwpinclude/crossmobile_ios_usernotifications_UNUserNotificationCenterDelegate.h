// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.usernotifications.UNUserNotificationCenterDelegate definition

#import "xmlvm.h"
#import <UserNotifications/UserNotifications.h>
@class crossmobile_ios_usernotifications_UNNotification;
@class crossmobile_ios_usernotifications_UNNotificationResponse;
@class crossmobile_ios_usernotifications_UNUserNotificationCenter;
@class java_lang_Long;
@class java_lang_Number;
@protocol java_lang_Runnable;
@protocol org_robovm_objc_block_VoidBlock1;

CM_EXPORT_CLASS
@protocol crossmobile_ios_usernotifications_UNUserNotificationCenterDelegate
- (void) didReceiveNotificationResponse___crossmobile_ios_usernotifications_UNUserNotificationCenter_crossmobile_ios_usernotifications_UNNotificationResponse_java_lang_Runnable:(UNUserNotificationCenter*) center :(UNNotificationResponse*) response :(id<java_lang_Runnable>) completionHandler ;
- (void) willPresentNotification___crossmobile_ios_usernotifications_UNUserNotificationCenter_crossmobile_ios_usernotifications_UNNotification_org_robovm_objc_block_VoidBlock1:(UNUserNotificationCenter*) center :(UNNotification*) notification :(id<org_robovm_objc_block_VoidBlock1>) completionHandler ;
@end
