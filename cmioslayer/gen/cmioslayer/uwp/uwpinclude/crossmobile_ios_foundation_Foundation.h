// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.foundation.Foundation definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "java_lang_Object.h"
@class java_lang_String;
@protocol java_util_List;

CM_EXPORT_CLASS
@interface crossmobile_ios_foundation_Foundation : java_lang_Object
+ (NSString*) NSHomeDirectory__;
+ (NSArray*) NSSearchPathForDirectoriesInDomains___int_int_boolean:(int) directory :(int) domainMask :(BOOL) expandTilde ;
+ (NSString*) NSTemporaryDirectory__;
@end
