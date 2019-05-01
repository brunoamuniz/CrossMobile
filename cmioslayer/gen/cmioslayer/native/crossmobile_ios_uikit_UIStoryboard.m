// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIStoryboard implementation

#import "crossmobile_ios_foundation_NSBundle.h"
#import "crossmobile_ios_uikit_UIStoryboard.h"
#import "crossmobile_ios_uikit_UIViewController.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

@implementation crossmobile_ios_uikit_UIStoryboard$Ext

// (UIStoryboard) - (__kindof UIViewController *)instantiateInitialViewController;
- (UIViewController*) instantiateInitialViewController__
{
    UIViewController* re$ult = [super instantiateInitialViewController];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIStoryboard) - (__kindof UIViewController *)instantiateViewControllerWithIdentifier:(NSString *)identifier;
- (UIViewController*) instantiateViewControllerWithIdentifier___java_lang_String:(NSString*) identifier 
{
    UIViewController* re$ult = [super instantiateViewControllerWithIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (NSObject) - (void)setValue:(id)value forKey:(NSString *)key;
- (void) setValue___java_lang_Object_java_lang_String:(id) value :(NSString*) key 
{
    [super setValue:(value == JAVA_NULL ? nil : value) forKey:(key == JAVA_NULL ? nil : key)];
}

// (NSObject) - (id)valueForKey:(NSString *)key;
- (id) valueForKey___java_lang_String:(NSString*) key 
{
    id re$ult = [super valueForKey:(key == JAVA_NULL ? nil : key)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end

@implementation UIStoryboard (cm_crossmobile_ios_uikit_UIStoryboard)

// direct binding of: + (UIStoryboard *)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil;
+ (UIStoryboard*) storyboardWithName___java_lang_String_crossmobile_ios_foundation_NSBundle:(NSString*) name :(NSBundle*) storyboardBundleOrNil 
{
    UIStoryboard* re$ult = [UIStoryboard storyboardWithName:(name == JAVA_NULL ? nil : name) bundle:(storyboardBundleOrNil == JAVA_NULL ? nil : storyboardBundleOrNil)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: -(instancetype) init;
- (instancetype) __init_crossmobile_ios_uikit_UIStoryboard__
{
    return [self init];
}

// direct binding of: - (__kindof UIViewController *)instantiateInitialViewController;
- (UIViewController*) instantiateInitialViewController__
{
    UIViewController* re$ult = [self instantiateInitialViewController];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (__kindof UIViewController *)instantiateViewControllerWithIdentifier:(NSString *)identifier;
- (UIViewController*) instantiateViewControllerWithIdentifier___java_lang_String:(NSString*) identifier 
{
    UIViewController* re$ult = [self instantiateViewControllerWithIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end
