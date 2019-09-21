// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile_ios_foundation_NSUUID definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class java_lang_String;

CM_EXPORT_CLASS
@interface crossmobile_ios_foundation_NSUUID$Ext : NSUUID
@end

#define crossmobile_ios_foundation_NSUUID NSUUID
@interface NSUUID (cm_crossmobile_ios_foundation_NSUUID)
+ (instancetype) UUID__;
- (instancetype) __init_crossmobile_ios_foundation_NSUUID___byte_ARRAYTYPE:(XMLVMArray*) bytes ;
- (instancetype) __init_crossmobile_ios_foundation_NSUUID___java_lang_String:(NSString*) string ;
- (NSString*) UUIDString__;
- (void) getUUIDBytes___byte_ARRAYTYPE:(XMLVMArray*) uuid ;
@end
