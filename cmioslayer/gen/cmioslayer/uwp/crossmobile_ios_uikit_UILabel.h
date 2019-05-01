// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UILabel definition

#import "xmlvm.h"
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class crossmobile_ios_coregraphics_CGRect;
@class crossmobile_ios_coregraphics_CGSize;
@class crossmobile_ios_uikit_UIColor;
@class crossmobile_ios_uikit_UIFont;
@class java_lang_String;

@interface crossmobile_ios_uikit_UILabel$Ext : UILabel
@end

#define crossmobile_ios_uikit_UILabel UILabel
@interface UILabel (cm_crossmobile_ios_uikit_UILabel)
- (instancetype) __init_crossmobile_ios_uikit_UILabel__;
- (instancetype) __init_crossmobile_ios_uikit_UILabel___crossmobile_ios_coregraphics_CGRect:(crossmobile_ios_coregraphics_CGRect*) frame ;
- (void) setAdjustsFontSizeToFitWidth___boolean:(BOOL) adjustsFontSizeToFitWidth ;
- (BOOL) adjustsFontSizeToFitWidth__;
- (void) setBaselineAdjustment___int:(int) baselineAdjustment ;
- (int) baselineAdjustment__;
- (void) setFont___crossmobile_ios_uikit_UIFont:(UIFont*) font ;
- (UIFont*) font__;
- (void) setHighlighted___boolean:(BOOL) highlighted ;
- (BOOL) isHighlighted__;
- (void) setHighlightedTextColor___crossmobile_ios_uikit_UIColor:(UIColor*) highlightedTextColor ;
- (UIColor*) highlightedTextColor__;
- (void) setLineBreakMode___int:(int) lineBreakMode ;
- (int) lineBreakMode__;
- (void) setMinimumScaleFactor___double:(double) minimumScaleFactor ;
- (double) minimumScaleFactor__;
- (void) setNumberOfLines___int:(int) numberOfLines ;
- (int) numberOfLines__;
- (void) setPreferredMaxLayoutWidth___double:(double) preferredMaxLayoutWidth ;
- (double) preferredMaxLayoutWidth__;
- (void) setShadowColor___crossmobile_ios_uikit_UIColor:(UIColor*) shadowColor ;
- (UIColor*) shadowColor__;
- (void) setShadowOffset___crossmobile_ios_coregraphics_CGSize:(crossmobile_ios_coregraphics_CGSize*) shadowOffset ;
- (crossmobile_ios_coregraphics_CGSize*) shadowOffset__;
- (void) setText___java_lang_String:(NSString*) text ;
- (NSString*) text__;
- (void) setTextAlignment___int:(int) textAlignment ;
- (int) textAlignment__;
- (void) setTextColor___crossmobile_ios_uikit_UIColor:(UIColor*) textColor ;
- (UIColor*) textColor__;
@end
