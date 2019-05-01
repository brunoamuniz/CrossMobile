// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.foundation.NSCalendar definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class crossmobile_ios_foundation_NSDate;
@class crossmobile_ios_foundation_NSDateComponents;

@interface crossmobile_ios_foundation_NSCalendar$Ext : NSCalendar
@end

#define crossmobile_ios_foundation_NSCalendar NSCalendar
@interface NSCalendar (cm_crossmobile_ios_foundation_NSCalendar)
+ (NSCalendar*) currentCalendar__;
- (NSDateComponents*) components___int_crossmobile_ios_foundation_NSDate:(int) unitFlags :(NSDate*) date ;
- (NSDateComponents*) components___int_crossmobile_ios_foundation_NSDate_crossmobile_ios_foundation_NSDate_int:(int) unitFlags :(NSDate*) startingDate :(NSDate*) resultDate :(int) opts ;
- (NSDate*) dateByAddingComponents___crossmobile_ios_foundation_NSDateComponents_crossmobile_ios_foundation_NSDate_int:(NSDateComponents*) comps :(NSDate*) date :(int) opts ;
- (NSDate*) dateFromComponents___crossmobile_ios_foundation_NSDateComponents:(NSDateComponents*) comps ;
@end
