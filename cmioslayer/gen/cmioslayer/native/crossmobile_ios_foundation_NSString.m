// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile_ios_foundation_NSString implementation

#import "crossmobile_ios_coregraphics_CGPoint.h"
#import "crossmobile_ios_coregraphics_CGSize.h"
#import "crossmobile_ios_foundation_NSData.h"
#import "crossmobile_ios_foundation_NSLocale.h"
#import "crossmobile_ios_foundation_NSString.h"
#import "crossmobile_ios_foundation_NSURL.h"
#import "crossmobile_ios_uikit_UIFont.h"
#import "crossmobile_rt_StrongReference.h"
#import "java_lang_String.h"
#import "java_util_List.h"

@implementation crossmobile_ios_foundation_NSString$Ext

@end

@implementation NSString (cm_crossmobile_ios_foundation_NSString)

// - (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding;
+ (BOOL) canBeConvertedToEncoding___java_lang_String_int:(NSString*) this :(int) encoding 
{
    return [(this == JAVA_NULL ? nil : this) canBeConvertedToEncoding:encoding];
}

// - (NSComparisonResult)compare:(NSString *)aString options:(NSStringCompareOptions)mask;
+ (int) compare___java_lang_String_java_lang_String_int:(NSString*) this :(NSString*) aString :(int) mask 
{
    return [(this == JAVA_NULL ? nil : this) compare:(aString == JAVA_NULL ? nil : aString) options:mask];
}

// - (NSArray<NSString *> *)componentsSeparatedByString:(NSString *)separator;
+ (NSArray*) componentsSeparatedByString___java_lang_String_java_lang_String:(NSString*) this :(NSString*) separator 
{
    NSArray* re$ult = [(this == JAVA_NULL ? nil : this) componentsSeparatedByString:(separator == JAVA_NULL ? nil : separator)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// - (NSData *)dataUsingEncoding:(NSStringEncoding)encoding;
+ (NSData*) dataUsingEncoding___java_lang_String_int:(NSString*) this :(int) encoding 
{
    NSData* re$ult = [(this == JAVA_NULL ? nil : this) dataUsingEncoding:encoding];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// - (CGSize)drawAtPoint:(CGPoint)point withFont:(UIFont *)font;
+ (crossmobile_ios_coregraphics_CGSize*) drawAtPoint___java_lang_String_crossmobile_ios_coregraphics_CGPoint_crossmobile_ios_uikit_UIFont:(NSString*) this :(crossmobile_ios_coregraphics_CGPoint*) point :(UIFont*) font 
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[(this == JAVA_NULL ? nil : this) drawAtPoint:[point getCGPoint] withFont:(font == JAVA_NULL ? nil : font)]];
}

// - (instancetype)initWithData:(NSData *)data encoding:(NSStringEncoding)encoding;
+ (instancetype) initWithData___crossmobile_ios_foundation_NSData_int:(NSData*) data :(int) encoding 
{
    return [[NSString alloc] initWithData:(data == JAVA_NULL ? nil : data) encoding:encoding];
}

// - (instancetype)initWithFormat:(NSString *)format locale:(id)locale, ...;
+ (instancetype) initWithFormat___java_lang_String_crossmobile_ios_foundation_NSLocale_java_lang_Object_ARRAYTYPE:(NSString*) format :(NSLocale*) locale :(XMLVMArray*) va_array 
{
    return xmlvm_formatWith(FFI_FN(nil), YES, 4, va_array, [NSString alloc], (id)NSSelectorFromString(@"initWithFormat:locale:"), (format == JAVA_NULL ? nil : format), (locale == JAVA_NULL ? nil : locale));
}

// - (instancetype)initWithFormat:(NSString *)format, ...;
+ (instancetype) initWithFormat___java_lang_String_java_lang_Object_ARRAYTYPE:(NSString*) format :(XMLVMArray*) va_array 
{
    return xmlvm_formatWith(FFI_FN(nil), YES, 3, va_array, [NSString alloc], (id)NSSelectorFromString(@"initWithFormat:"), (format == JAVA_NULL ? nil : format));
}

// + (instancetype)localizedStringWithFormat:(NSString *)format, ...;
+ (instancetype) localizedStringWithFormat___java_lang_String_java_lang_Object_ARRAYTYPE:(NSString*) format :(XMLVMArray*) va_array 
{
    id re$ult = xmlvm_formatWith(FFI_FN(nil), YES, 3, va_array, [NSString class], (id)NSSelectorFromString(@"localizedStringWithFormat:"), (format == JAVA_NULL ? nil : format));
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// - (CGSize)sizeWithFont:(UIFont *)font;
+ (crossmobile_ios_coregraphics_CGSize*) sizeWithFont___java_lang_String_crossmobile_ios_uikit_UIFont:(NSString*) this :(UIFont*) font 
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[(this == JAVA_NULL ? nil : this) sizeWithFont:(font == JAVA_NULL ? nil : font)]];
}

// - (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode ;
+ (crossmobile_ios_coregraphics_CGSize*) sizeWithFont___java_lang_String_crossmobile_ios_uikit_UIFont_crossmobile_ios_coregraphics_CGSize_int:(NSString*) this :(UIFont*) font :(crossmobile_ios_coregraphics_CGSize*) size :(int) lineBreakMode 
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[(this == JAVA_NULL ? nil : this) sizeWithFont:(font == JAVA_NULL ? nil : font) constrainedToSize:[size getCGSize] lineBreakMode:lineBreakMode]];
}

// - (NSString *)stringByAddingPercentEscapesUsingEncoding:(NSStringEncoding)encoding;
+ (NSString*) stringByAddingPercentEscapesUsingEncoding___java_lang_String_int:(NSString*) this :(int) encoding 
{
    NSString* re$ult = [(this == JAVA_NULL ? nil : this) stringByAddingPercentEscapesUsingEncoding:encoding];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// - (NSString *)stringByReplacingPercentEscapesUsingEncoding:(NSStringEncoding)encoding;
+ (NSString*) stringByReplacingPercentEscapesUsingEncoding___java_lang_String_int:(NSString*) this :(int) encoding 
{
    NSString* re$ult = [(this == JAVA_NULL ? nil : this) stringByReplacingPercentEscapesUsingEncoding:encoding];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// + (id)stringWithContentsOfFile:(NSString *)path;
+ (id) stringWithContentsOfFile___java_lang_String:(NSString*) path 
{
    id re$ult = [NSString stringWithContentsOfFile:(path == JAVA_NULL ? nil : path)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// + (instancetype)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error;
+ (instancetype) stringWithContentsOfFile___java_lang_String_int_crossmobile_rt_StrongReference:(NSString*) path :(int) enc :(crossmobile_rt_StrongReference*) error 
{
    error = error == JAVA_NULL ? nil : error;
    id error$conv = nil;
    id re$ult = [NSString stringWithContentsOfFile:(path == JAVA_NULL ? nil : path) encoding:enc error:(error ? &error$conv : nil)];
    if (error)
        [error set___java_lang_Object:(error$conv ? error$conv : JAVA_NULL)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// + (id)stringWithContentsOfURL:(NSURL *)url;
+ (id) stringWithContentsOfURL___crossmobile_ios_foundation_NSURL:(NSURL*) url 
{
    id re$ult = [NSString stringWithContentsOfURL:(url == JAVA_NULL ? nil : url)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// + (instancetype)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error;
+ (instancetype) stringWithContentsOfURL___crossmobile_ios_foundation_NSURL_int_crossmobile_rt_StrongReference:(NSURL*) url :(int) enc :(crossmobile_rt_StrongReference*) error 
{
    error = error == JAVA_NULL ? nil : error;
    id error$conv = nil;
    id re$ult = [NSString stringWithContentsOfURL:(url == JAVA_NULL ? nil : url) encoding:enc error:(error ? &error$conv : nil)];
    if (error)
        [error set___java_lang_Object:(error$conv ? error$conv : JAVA_NULL)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error;
+ (BOOL) writeToFile___java_lang_String_java_lang_String_boolean_int_crossmobile_rt_StrongReference:(NSString*) this :(NSString*) path :(BOOL) useAuxiliaryFile :(int) enc :(crossmobile_rt_StrongReference*) error 
{
    error = error == JAVA_NULL ? nil : error;
    id error$conv = nil;
    BOOL re$ult = [(this == JAVA_NULL ? nil : this) writeToFile:(path == JAVA_NULL ? nil : path) atomically:useAuxiliaryFile encoding:enc error:(error ? &error$conv : nil)];
    if (error)
        [error set___java_lang_Object:(error$conv ? error$conv : JAVA_NULL)];
    return re$ult;
}

@end
