// (c) 2020 under LGPL by CrossMobile plugin tools

// crossmobile_ios_usernotifications_UNNotificationServiceExtension definition

#import "xmlvm.h"
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
@class crossmobile_ios_usernotifications_UNNotificationContent;
@class crossmobile_ios_usernotifications_UNNotificationRequest;
@protocol org_robovm_objc_block_VoidBlock1;

@interface crossmobile_ios_usernotifications_UNNotificationServiceExtension$Ext : UNNotificationServiceExtension
@end

#define crossmobile_ios_usernotifications_UNNotificationServiceExtension UNNotificationServiceExtension
@interface UNNotificationServiceExtension (cm_crossmobile_ios_usernotifications_UNNotificationServiceExtension)
- (instancetype) __init_crossmobile_ios_usernotifications_UNNotificationServiceExtension__;
- (void) didReceiveNotificationRequest___crossmobile_ios_usernotifications_UNNotificationRequest_org_robovm_objc_block_VoidBlock1:(UNNotificationRequest*) request :(id<org_robovm_objc_block_VoidBlock1>) contentHandler ;
- (void) serviceExtensionTimeWillExpire__;
@end
