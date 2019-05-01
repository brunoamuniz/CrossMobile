// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UIGestureRecognizer implementation

#import "crossmobile_ios_coregraphics_CGPoint.h"
#import "crossmobile_ios_foundation_NSSelector.h"
#import "crossmobile_ios_uikit_UIEvent.h"
#import "crossmobile_ios_uikit_UIGestureRecognizer.h"
#import "crossmobile_ios_uikit_UIGestureRecognizerDelegate.h"
#import "crossmobile_ios_uikit_UIView.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "java_lang_reflect_Method.h"
#import "java_util_Set.h"

@implementation crossmobile_ios_uikit_UIGestureRecognizer$Ext

// (UIGestureRecognizer) @property(nonatomic) BOOL cancelsTouchesInView;
- (void) setCancelsTouchesInView___boolean:(BOOL) cancelsTouchesInView 
{
    [super setCancelsTouchesInView:cancelsTouchesInView];
}

// (UIGestureRecognizer) @property(nonatomic) BOOL cancelsTouchesInView;
- (BOOL) cancelsTouchesInView__
{
    return [super cancelsTouchesInView];
}

// (UIGestureRecognizer) @property(nonatomic) BOOL delaysTouchesBegan;
- (void) setDelaysTouchesBegan___boolean:(BOOL) delaysTouchesBegan 
{
    [super setDelaysTouchesBegan:delaysTouchesBegan];
}

// (UIGestureRecognizer) @property(nonatomic) BOOL delaysTouchesBegan;
- (BOOL) delaysTouchesBegan__
{
    return [super delaysTouchesBegan];
}

// (UIGestureRecognizer) @property(nonatomic) BOOL delaysTouchesEnded;
- (void) setDelaysTouchesEnded___boolean:(BOOL) delaysTouchesEnded 
{
    [super setDelaysTouchesEnded:delaysTouchesEnded];
}

// (UIGestureRecognizer) @property(nonatomic) BOOL delaysTouchesEnded;
- (BOOL) delaysTouchesEnded__
{
    return [super delaysTouchesEnded];
}

// (UIGestureRecognizer) @property(nonatomic, weak) id<UIGestureRecognizerDelegate> delegate;
- (void) setDelegate___crossmobile_ios_uikit_UIGestureRecognizerDelegate:(id<UIGestureRecognizerDelegate>) delegate 
{
    objc_setAssociatedObject(self, @selector(setDelegate:), delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [super setDelegate:(delegate == JAVA_NULL ? nil : delegate)];
}

// (UIGestureRecognizer) @property(nonatomic, weak) id<UIGestureRecognizerDelegate> delegate;
- (id<UIGestureRecognizerDelegate>) delegate__
{
    id<UIGestureRecognizerDelegate> re$ult = [super delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIGestureRecognizer) @property(nonatomic, getter=isEnabled) BOOL enabled;
- (void) setEnabled___boolean:(BOOL) enabled 
{
    [super setEnabled:enabled];
}

// (UIGestureRecognizer) @property(nonatomic, getter=isEnabled) BOOL enabled;
- (BOOL) isEnabled__
{
    return [super isEnabled];
}

// (UIGestureRecognizer) @property(nonatomic, readonly) UIGestureRecognizerState state;
- (int) state__
{
    return [super state];
}

// (UIGestureRecognizer) @property(nonatomic, readonly) UIView *view;
- (UIView*) view__
{
    UIView* re$ult = [super view];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIGestureRecognizer) - (void)addTarget:(id)target action:(SEL)action;
- (void) addTarget___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target 
{
    objc_setAssociatedObject(self, (void*)target, target, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [super addTarget:(target == JAVA_NULL ? nil : target) action:@selector(exec___java_lang_Object:)];
}

// (UIGestureRecognizer) - (BOOL)canBePreventedByGestureRecognizer:(UIGestureRecognizer *)preventingGestureRecognizer;
- (BOOL) canBePreventedByGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) preventingGestureRecognizer 
{
    return [super canBePreventedByGestureRecognizer:(preventingGestureRecognizer == JAVA_NULL ? nil : preventingGestureRecognizer)];
}

// (UIGestureRecognizer) - (BOOL)canPreventGestureRecognizer:(UIGestureRecognizer *)preventedGestureRecognizer;
- (BOOL) canPreventGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) preventedGestureRecognizer 
{
    return [super canPreventGestureRecognizer:(preventedGestureRecognizer == JAVA_NULL ? nil : preventedGestureRecognizer)];
}

// (UIGestureRecognizer) - (CGPoint)locationInView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) locationInView___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super locationInView:(view == JAVA_NULL ? nil : view)]];
}

// (UIGestureRecognizer) - (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) locationOfTouch___int_crossmobile_ios_uikit_UIView:(int) touchIndex :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super locationOfTouch:touchIndex inView:(view == JAVA_NULL ? nil : view)]];
}

// (UIGestureRecognizer) - (NSUInteger)numberOfTouches;
- (int) numberOfTouches__
{
    return [super numberOfTouches];
}

// (UIGestureRecognizer) - (void)removeTarget:(id)target action:(SEL)action;
- (void) removeTarget___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target 
{
    objc_setAssociatedObject(self, (void*)target, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [super removeTarget:(target == JAVA_NULL ? nil : target) action:@selector(exec___java_lang_Object:)];
}

// (UIGestureRecognizer) - (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer;
- (void) requireGestureRecognizerToFail___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) otherGestureRecognizer 
{
    [super requireGestureRecognizerToFail:(otherGestureRecognizer == JAVA_NULL ? nil : otherGestureRecognizer)];
}

// (UIGestureRecognizer) - (void)reset;
- (void) reset__
{
    [super reset];
}

// (NSObject) - (void)setValue:(id)value forKey:(NSString *)key;
- (void) setValue___java_lang_Object_java_lang_String:(id) value :(NSString*) key 
{
    [super setValue:(value == JAVA_NULL ? nil : value) forKey:(key == JAVA_NULL ? nil : key)];
}

// (UIGestureRecognizer) - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesBegan___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesBegan:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIGestureRecognizer) - (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesCancelled___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesCancelled:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIGestureRecognizer) - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesEnded___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesEnded:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIGestureRecognizer) - (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesMoved___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesMoved:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (NSObject) - (id)valueForKey:(NSString *)key;
- (id) valueForKey___java_lang_String:(NSString*) key 
{
    id re$ult = [super valueForKey:(key == JAVA_NULL ? nil : key)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

@end

@implementation UIGestureRecognizer (cm_crossmobile_ios_uikit_UIGestureRecognizer)

// direct binding of: - (instancetype)initWithTarget:(id)target action:(SEL)action;
- (instancetype) __init_crossmobile_ios_uikit_UIGestureRecognizer___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target 
{
    objc_setAssociatedObject(self, (void*)target, target, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return [self initWithTarget:(target == JAVA_NULL ? nil : target) action:@selector(exec___java_lang_Object:)];
}

// direct binding of: @property(nonatomic) BOOL cancelsTouchesInView;
- (void) setCancelsTouchesInView___boolean:(BOOL) cancelsTouchesInView 
{
    [self setCancelsTouchesInView:cancelsTouchesInView];
}

// direct binding of: @property(nonatomic) BOOL cancelsTouchesInView;
- (BOOL) cancelsTouchesInView__
{
    return [self cancelsTouchesInView];
}

// direct binding of: @property(nonatomic) BOOL delaysTouchesBegan;
- (void) setDelaysTouchesBegan___boolean:(BOOL) delaysTouchesBegan 
{
    [self setDelaysTouchesBegan:delaysTouchesBegan];
}

// direct binding of: @property(nonatomic) BOOL delaysTouchesBegan;
- (BOOL) delaysTouchesBegan__
{
    return [self delaysTouchesBegan];
}

// direct binding of: @property(nonatomic) BOOL delaysTouchesEnded;
- (void) setDelaysTouchesEnded___boolean:(BOOL) delaysTouchesEnded 
{
    [self setDelaysTouchesEnded:delaysTouchesEnded];
}

// direct binding of: @property(nonatomic) BOOL delaysTouchesEnded;
- (BOOL) delaysTouchesEnded__
{
    return [self delaysTouchesEnded];
}

// direct binding of: @property(nonatomic, weak) id<UIGestureRecognizerDelegate> delegate;
- (void) setDelegate___crossmobile_ios_uikit_UIGestureRecognizerDelegate:(id<UIGestureRecognizerDelegate>) delegate 
{
    objc_setAssociatedObject(self, @selector(setDelegate:), delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setDelegate:(delegate == JAVA_NULL ? nil : delegate)];
}

// direct binding of: @property(nonatomic, weak) id<UIGestureRecognizerDelegate> delegate;
- (id<UIGestureRecognizerDelegate>) delegate__
{
    id<UIGestureRecognizerDelegate> re$ult = [self delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic, getter=isEnabled) BOOL enabled;
- (void) setEnabled___boolean:(BOOL) enabled 
{
    [self setEnabled:enabled];
}

// direct binding of: @property(nonatomic, getter=isEnabled) BOOL enabled;
- (BOOL) isEnabled__
{
    return [self isEnabled];
}

// direct binding of: @property(nonatomic, readonly) UIGestureRecognizerState state;
- (int) state__
{
    return [self state];
}

// direct binding of: @property(nonatomic, readonly) UIView *view;
- (UIView*) view__
{
    UIView* re$ult = [self view];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (void)addTarget:(id)target action:(SEL)action;
- (void) addTarget___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target 
{
    objc_setAssociatedObject(self, (void*)target, target, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addTarget:(target == JAVA_NULL ? nil : target) action:@selector(exec___java_lang_Object:)];
}

// direct binding of: - (BOOL)canBePreventedByGestureRecognizer:(UIGestureRecognizer *)preventingGestureRecognizer;
- (BOOL) canBePreventedByGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) preventingGestureRecognizer 
{
    return [self canBePreventedByGestureRecognizer:(preventingGestureRecognizer == JAVA_NULL ? nil : preventingGestureRecognizer)];
}

// direct binding of: - (BOOL)canPreventGestureRecognizer:(UIGestureRecognizer *)preventedGestureRecognizer;
- (BOOL) canPreventGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) preventedGestureRecognizer 
{
    return [self canPreventGestureRecognizer:(preventedGestureRecognizer == JAVA_NULL ? nil : preventedGestureRecognizer)];
}

// direct binding of: - (CGPoint)locationInView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) locationInView___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[self locationInView:(view == JAVA_NULL ? nil : view)]];
}

// direct binding of: - (CGPoint)locationOfTouch:(NSUInteger)touchIndex inView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) locationOfTouch___int_crossmobile_ios_uikit_UIView:(int) touchIndex :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[self locationOfTouch:touchIndex inView:(view == JAVA_NULL ? nil : view)]];
}

// direct binding of: - (NSUInteger)numberOfTouches;
- (int) numberOfTouches__
{
    return [self numberOfTouches];
}

// direct binding of: - (void)removeTarget:(id)target action:(SEL)action;
- (void) removeTarget___crossmobile_ios_foundation_NSSelector:(id<crossmobile_ios_foundation_NSSelector>) target 
{
    objc_setAssociatedObject(self, (void*)target, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self removeTarget:(target == JAVA_NULL ? nil : target) action:@selector(exec___java_lang_Object:)];
}

// direct binding of: - (void)requireGestureRecognizerToFail:(UIGestureRecognizer *)otherGestureRecognizer;
- (void) requireGestureRecognizerToFail___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) otherGestureRecognizer 
{
    [self requireGestureRecognizerToFail:(otherGestureRecognizer == JAVA_NULL ? nil : otherGestureRecognizer)];
}

// direct binding of: - (void)reset;
- (void) reset__
{
    [self reset];
}

// direct binding of: - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesBegan___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [self touchesBegan:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// direct binding of: - (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesCancelled___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [self touchesCancelled:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// direct binding of: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesEnded___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [self touchesEnded:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// direct binding of: - (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesMoved___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [self touchesMoved:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

@end
