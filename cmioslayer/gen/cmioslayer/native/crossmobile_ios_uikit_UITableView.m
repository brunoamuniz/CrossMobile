// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.uikit.UITableView implementation

#import "crossmobile_ios_coregraphics_CGAffineTransform.h"
#import "crossmobile_ios_coregraphics_CGPoint.h"
#import "crossmobile_ios_coregraphics_CGRect.h"
#import "crossmobile_ios_coregraphics_CGSize.h"
#import "crossmobile_ios_foundation_NSIndexPath.h"
#import "crossmobile_ios_quartzcore_CALayer.h"
#import "crossmobile_ios_uikit_NSLayoutConstraint.h"
#import "crossmobile_ios_uikit_NSLayoutDimension.h"
#import "crossmobile_ios_uikit_NSLayoutXAxisAnchor.h"
#import "crossmobile_ios_uikit_NSLayoutYAxisAnchor.h"
#import "crossmobile_ios_uikit_UIColor.h"
#import "crossmobile_ios_uikit_UIEdgeInsets.h"
#import "crossmobile_ios_uikit_UIEvent.h"
#import "crossmobile_ios_uikit_UIGestureRecognizer.h"
#import "crossmobile_ios_uikit_UILayoutGuide.h"
#import "crossmobile_ios_uikit_UINib.h"
#import "crossmobile_ios_uikit_UIResponder.h"
#import "crossmobile_ios_uikit_UIScrollViewDelegate.h"
#import "crossmobile_ios_uikit_UITableView.h"
#import "crossmobile_ios_uikit_UITableViewCell.h"
#import "crossmobile_ios_uikit_UITableViewDataSource.h"
#import "crossmobile_ios_uikit_UIView.h"
#import "crossmobile_ios_uikit_UIWindow.h"
#import "java_lang_Class.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "java_util_List.h"
#import "java_util_Set.h"

@implementation crossmobile_ios_uikit_UITableView$Ext

// (UITableView) @property(nonatomic) BOOL allowsMultipleSelection;
- (void) setAllowsMultipleSelection___boolean:(BOOL) allowsMultipleSelection 
{
    [super setAllowsMultipleSelection:allowsMultipleSelection];
}

// (UITableView) @property(nonatomic) BOOL allowsMultipleSelection;
- (BOOL) allowsMultipleSelection__
{
    return [super allowsMultipleSelection];
}

// (UITableView) @property(nonatomic) BOOL allowsSelection;
- (void) setAllowsSelection___boolean:(BOOL) allowsSelection 
{
    [super setAllowsSelection:allowsSelection];
}

// (UITableView) @property(nonatomic) BOOL allowsSelection;
- (BOOL) allowsSelection__
{
    return [super allowsSelection];
}

// (UIView) @property(nonatomic) CGFloat alpha;
- (void) setAlpha___double:(double) alpha 
{
    [super setAlpha:alpha];
}

// (UIView) @property(nonatomic) CGFloat alpha;
- (double) alpha__
{
    return [super alpha];
}

// (UIScrollView) @property(nonatomic) BOOL alwaysBounceHorizontal;
- (void) setAlwaysBounceHorizontal___boolean:(BOOL) alwaysBounceHorizontal 
{
    [super setAlwaysBounceHorizontal:alwaysBounceHorizontal];
}

// (UIScrollView) @property(nonatomic) BOOL alwaysBounceHorizontal;
- (BOOL) alwaysBounceHorizontal__
{
    return [super alwaysBounceHorizontal];
}

// (UIScrollView) @property(nonatomic) BOOL alwaysBounceVertical;
- (void) setAlwaysBounceVertical___boolean:(BOOL) alwaysBounceVertical 
{
    [super setAlwaysBounceVertical:alwaysBounceVertical];
}

// (UIScrollView) @property(nonatomic) BOOL alwaysBounceVertical;
- (BOOL) alwaysBounceVertical__
{
    return [super alwaysBounceVertical];
}

// (UIView) @property(nonatomic) BOOL autoresizesSubviews;
- (void) setAutoresizesSubviews___boolean:(BOOL) autoresizesSubviews 
{
    [super setAutoresizesSubviews:autoresizesSubviews];
}

// (UIView) @property(nonatomic) BOOL autoresizesSubviews;
- (BOOL) autoresizesSubviews__
{
    return [super autoresizesSubviews];
}

// (UIView) @property(nonatomic) UIViewAutoresizing autoresizingMask;
- (void) setAutoresizingMask___int:(int) autoresizingMask 
{
    [super setAutoresizingMask:autoresizingMask];
}

// (UIView) @property(nonatomic) UIViewAutoresizing autoresizingMask;
- (int) autoresizingMask__
{
    return [super autoresizingMask];
}

// (UIView) @property(nonatomic, copy) UIColor *backgroundColor;
- (void) setBackgroundColor___crossmobile_ios_uikit_UIColor:(UIColor*) backgroundColor 
{
    [super setBackgroundColor:(backgroundColor == JAVA_NULL ? nil : backgroundColor)];
}

// (UIView) @property(nonatomic, copy) UIColor *backgroundColor;
- (UIColor*) backgroundColor__
{
    UIColor* re$ult = [super backgroundColor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutYAxisAnchor *bottomAnchor;
- (NSLayoutYAxisAnchor*) bottomAnchor__
{
    NSLayoutYAxisAnchor* re$ult = [super bottomAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic) BOOL bounces;
- (void) setBounces___boolean:(BOOL) bounces 
{
    [super setBounces:bounces];
}

// (UIScrollView) @property(nonatomic) BOOL bounces;
- (BOOL) bounces__
{
    return [super bounces];
}

// (UIView) @property(nonatomic) CGRect bounds;
- (void) setBounds___crossmobile_ios_coregraphics_CGRect:(crossmobile_ios_coregraphics_CGRect*) bounds 
{
    [super setBounds:[bounds getCGRect]];
}

// (UIView) @property(nonatomic) CGRect bounds;
- (crossmobile_ios_coregraphics_CGRect*) bounds__
{
    return [[crossmobile_ios_coregraphics_CGRect alloc] initWithCGRect:[super bounds]];
}

// (UIScrollView) @property(nonatomic) BOOL canCancelContentTouches;
- (void) setCanCancelContentTouches___boolean:(BOOL) canCancelContentTouches 
{
    [super setCanCancelContentTouches:canCancelContentTouches];
}

// (UIScrollView) @property(nonatomic) BOOL canCancelContentTouches;
- (BOOL) canCancelContentTouches__
{
    return [super canCancelContentTouches];
}

// (UIView) @property(nonatomic) CGPoint center;
- (void) setCenter___crossmobile_ios_coregraphics_CGPoint:(crossmobile_ios_coregraphics_CGPoint*) center 
{
    [super setCenter:[center getCGPoint]];
}

// (UIView) @property(nonatomic) CGPoint center;
- (crossmobile_ios_coregraphics_CGPoint*) center__
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super center]];
}

// (UIView) @property(readonly, strong) NSLayoutXAxisAnchor *centerXAnchor;
- (NSLayoutXAxisAnchor*) centerXAnchor__
{
    NSLayoutXAxisAnchor* re$ult = [super centerXAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutYAxisAnchor *centerYAnchor;
- (NSLayoutYAxisAnchor*) centerYAnchor__
{
    NSLayoutYAxisAnchor* re$ult = [super centerYAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic) BOOL clearsContextBeforeDrawing;
- (void) setClearsContextBeforeDrawing___boolean:(BOOL) clearsContextBeforeDrawing 
{
    [super setClearsContextBeforeDrawing:clearsContextBeforeDrawing];
}

// (UIView) @property(nonatomic) BOOL clipsToBounds;
- (void) setClipsToBounds___boolean:(BOOL) clipsToBounds 
{
    [super setClipsToBounds:clipsToBounds];
}

// (UIView) @property(nonatomic) BOOL clipsToBounds;
- (BOOL) clipsToBounds__
{
    return [super clipsToBounds];
}

// (UIView) @property(nonatomic, readonly) NSArray<__kindof NSLayoutConstraint *> *constraints;
- (NSArray*) constraints__
{
    NSArray* re$ult = [super constraints];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic) UIEdgeInsets contentInset;
- (void) setContentInset___crossmobile_ios_uikit_UIEdgeInsets:(crossmobile_ios_uikit_UIEdgeInsets*) contentInset 
{
    [super setContentInset:[contentInset getUIEdgeInsets]];
}

// (UIScrollView) @property(nonatomic) UIEdgeInsets contentInset;
- (crossmobile_ios_uikit_UIEdgeInsets*) contentInset__
{
    return [[crossmobile_ios_uikit_UIEdgeInsets alloc] initWithUIEdgeInsets:[super contentInset]];
}

// (UIView) @property(nonatomic) UIViewContentMode contentMode;
- (void) setContentMode___int:(int) contentMode 
{
    [super setContentMode:contentMode];
}

// (UIView) @property(nonatomic) UIViewContentMode contentMode;
- (int) contentMode__
{
    return [super contentMode];
}

// (UIScrollView) @property(nonatomic) CGPoint contentOffset;
- (void) setContentOffset___crossmobile_ios_coregraphics_CGPoint:(crossmobile_ios_coregraphics_CGPoint*) contentOffset 
{
    [super setContentOffset:[contentOffset getCGPoint]];
}

// (UIScrollView) @property(nonatomic) CGPoint contentOffset;
- (crossmobile_ios_coregraphics_CGPoint*) contentOffset__
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super contentOffset]];
}

// (UIScrollView) @property(nonatomic) CGSize contentSize;
- (void) setContentSize___crossmobile_ios_coregraphics_CGSize:(crossmobile_ios_coregraphics_CGSize*) contentSize 
{
    [super setContentSize:[contentSize getCGSize]];
}

// (UIScrollView) @property(nonatomic) CGSize contentSize;
- (crossmobile_ios_coregraphics_CGSize*) contentSize__
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[super contentSize]];
}

// (UITableView) @property(nonatomic, weak) id<UITableViewDataSource> dataSource;
- (void) setDataSource___crossmobile_ios_uikit_UITableViewDataSource:(id<UITableViewDataSource>) dataSource 
{
    objc_setAssociatedObject(self, @selector(setDataSource:), dataSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [super setDataSource:(dataSource == JAVA_NULL ? nil : dataSource)];
}

// (UITableView) @property(nonatomic, weak) id<UITableViewDataSource> dataSource;
- (id<UITableViewDataSource>) dataSource__
{
    id<UITableViewDataSource> re$ult = [super dataSource];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic, readonly, getter=isDecelerating) BOOL decelerating;
- (BOOL) isDecelerating__
{
    return [super isDecelerating];
}

// (UIScrollView) @property(nonatomic) CGFloat decelerationRate;
- (void) setDecelerationRate___double:(double) decelerationRate 
{
    [super setDecelerationRate:decelerationRate];
}

// (UIScrollView) @property(nonatomic) CGFloat decelerationRate;
- (double) decelerationRate__
{
    return [super decelerationRate];
}

// (UIScrollView) @property(nonatomic) BOOL delaysContentTouches;
- (void) setDelaysContentTouches___boolean:(BOOL) delaysContentTouches 
{
    [super setDelaysContentTouches:delaysContentTouches];
}

// (UIScrollView) @property(nonatomic) BOOL delaysContentTouches;
- (BOOL) delaysContentTouches__
{
    return [super delaysContentTouches];
}

// (UIScrollView) @property(nonatomic, weak) id<UIScrollViewDelegate> delegate;
- (void) setDelegate___crossmobile_ios_uikit_UIScrollViewDelegate:(id<UIScrollViewDelegate>) delegate 
{
    objc_setAssociatedObject(self, @selector(setDelegate:), delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [super setDelegate:(delegate == JAVA_NULL ? nil : delegate)];
}

// (UIScrollView) @property(nonatomic, weak) id<UIScrollViewDelegate> delegate;
- (id<UIScrollViewDelegate>) delegate__
{
    id<UIScrollViewDelegate> re$ult = [super delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic, getter=isDirectionalLockEnabled) BOOL directionalLockEnabled;
- (void) setDirectionalLockEnabled___boolean:(BOOL) directionalLockEnabled 
{
    [super setDirectionalLockEnabled:directionalLockEnabled];
}

// (UIScrollView) @property(nonatomic, getter=isDirectionalLockEnabled) BOOL directionalLockEnabled;
- (BOOL) isDirectionalLockEnabled__
{
    return [super isDirectionalLockEnabled];
}

// (UIScrollView) @property(nonatomic, readonly, getter=isDragging) BOOL dragging;
- (BOOL) isDragging__
{
    return [super isDragging];
}

// (UITableView) @property(nonatomic, getter=isEditing) BOOL editing;
- (void) setEditing___boolean:(BOOL) editing 
{
    [super setEditing:editing];
}

// (UITableView) @property(nonatomic, getter=isEditing) BOOL editing;
- (BOOL) isEditing__
{
    return [super isEditing];
}

// (UITableView) @property(nonatomic) CGFloat estimatedRowHeight;
- (void) setEstimatedRowHeight___double:(double) estimatedRowHeight 
{
    [super setEstimatedRowHeight:estimatedRowHeight];
}

// (UITableView) @property(nonatomic) CGFloat estimatedRowHeight;
- (double) estimatedRowHeight__
{
    return [super estimatedRowHeight];
}

// (UIView) @property(nonatomic) CGRect frame;
- (void) setFrame___crossmobile_ios_coregraphics_CGRect:(crossmobile_ios_coregraphics_CGRect*) frame 
{
    [super setFrame:[frame getCGRect]];
}

// (UIView) @property(nonatomic) CGRect frame;
- (crossmobile_ios_coregraphics_CGRect*) frame__
{
    return [[crossmobile_ios_coregraphics_CGRect alloc] initWithCGRect:[super frame]];
}

// (UIView) @property(nonatomic, copy) NSArray<__kindof UIGestureRecognizer *> *gestureRecognizers;
- (void) setGestureRecognizers___java_util_List:(NSArray*) gestureRecognizers 
{
    [super setGestureRecognizers:(gestureRecognizers == JAVA_NULL ? nil : gestureRecognizers)];
}

// (UIView) @property(nonatomic, copy) NSArray<__kindof UIGestureRecognizer *> *gestureRecognizers;
- (NSArray*) gestureRecognizers__
{
    NSArray* re$ult = [super gestureRecognizers];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutDimension *heightAnchor;
- (NSLayoutDimension*) heightAnchor__
{
    NSLayoutDimension* re$ult = [super heightAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic, getter=isHidden) BOOL hidden;
- (void) setHidden___boolean:(BOOL) hidden 
{
    [super setHidden:hidden];
}

// (UIView) @property(nonatomic, getter=isHidden) BOOL hidden;
- (BOOL) isHidden__
{
    return [super isHidden];
}

// (UITableView) @property(nonatomic, readonly) NSIndexPath *indexPathForSelectedRow;
- (NSIndexPath*) indexPathForSelectedRow__
{
    NSIndexPath* re$ult = [super indexPathForSelectedRow];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) @property(nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForSelectedRows;
- (NSArray*) indexPathsForSelectedRows__
{
    NSArray* re$ult = [super indexPathsForSelectedRows];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) @property(nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForVisibleRows;
- (NSArray*) indexPathsForVisibleRows__
{
    NSArray* re$ult = [super indexPathsForVisibleRows];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic) UIScrollViewIndicatorStyle indicatorStyle;
- (void) setIndicatorStyle___int:(int) indicatorStyle 
{
    [super setIndicatorStyle:indicatorStyle];
}

// (UIScrollView) @property(nonatomic) UIScrollViewIndicatorStyle indicatorStyle;
- (int) indicatorStyle__
{
    return [super indicatorStyle];
}

// (UIView) @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
- (void) setInsetsLayoutMarginsFromSafeArea___boolean:(BOOL) insetsLayoutMarginsFromSafeArea 
{
    [super setInsetsLayoutMarginsFromSafeArea:insetsLayoutMarginsFromSafeArea];
}

// (UIView) @property(nonatomic) BOOL insetsLayoutMarginsFromSafeArea;
- (BOOL) insetsLayoutMarginsFromSafeArea__
{
    return [super insetsLayoutMarginsFromSafeArea];
}

// (UIView) @property(nonatomic, readonly, strong) CALayer *layer;
- (CALayer*) layer__
{
    CALayer* re$ult = [super layer];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic) UIEdgeInsets layoutMargins;
- (void) setLayoutMargins___crossmobile_ios_uikit_UIEdgeInsets:(crossmobile_ios_uikit_UIEdgeInsets*) layoutMargins 
{
    [super setLayoutMargins:[layoutMargins getUIEdgeInsets]];
}

// (UIView) @property(nonatomic) UIEdgeInsets layoutMargins;
- (crossmobile_ios_uikit_UIEdgeInsets*) layoutMargins__
{
    return [[crossmobile_ios_uikit_UIEdgeInsets alloc] initWithUIEdgeInsets:[super layoutMargins]];
}

// (UIView) @property(readonly, strong) UILayoutGuide *layoutMarginsGuide;
- (UILayoutGuide*) layoutMarginsGuide__
{
    UILayoutGuide* re$ult = [super layoutMarginsGuide];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutXAxisAnchor *leadingAnchor;
- (NSLayoutXAxisAnchor*) leadingAnchor__
{
    NSLayoutXAxisAnchor* re$ult = [super leadingAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutXAxisAnchor *leftAnchor;
- (NSLayoutXAxisAnchor*) leftAnchor__
{
    NSLayoutXAxisAnchor* re$ult = [super leftAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic, getter=isMultipleTouchEnabled) BOOL multipleTouchEnabled;
- (void) setMultipleTouchEnabled___boolean:(BOOL) multipleTouchEnabled 
{
    [super setMultipleTouchEnabled:multipleTouchEnabled];
}

// (UIView) @property(nonatomic, getter=isMultipleTouchEnabled) BOOL multipleTouchEnabled;
- (BOOL) isMultipleTouchEnabled__
{
    return [super isMultipleTouchEnabled];
}

// (UIView) @property(nonatomic, getter=isOpaque) BOOL opaque;
- (void) setOpaque___boolean:(BOOL) opaque 
{
    [super setOpaque:opaque];
}

// (UIView) @property(nonatomic, getter=isOpaque) BOOL opaque;
- (BOOL) isOpaque__
{
    return [super isOpaque];
}

// (UIScrollView) @property(nonatomic, getter=isPagingEnabled) BOOL pagingEnabled;
- (void) setPagingEnabled___boolean:(BOOL) pagingEnabled 
{
    [super setPagingEnabled:pagingEnabled];
}

// (UIScrollView) @property(nonatomic, getter=isPagingEnabled) BOOL pagingEnabled;
- (BOOL) isPagingEnabled__
{
    return [super isPagingEnabled];
}

// (UIView) @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
- (void) setPreservesSuperviewLayoutMargins___boolean:(BOOL) preservesSuperviewLayoutMargins 
{
    [super setPreservesSuperviewLayoutMargins:preservesSuperviewLayoutMargins];
}

// (UIView) @property(nonatomic) BOOL preservesSuperviewLayoutMargins;
- (BOOL) preservesSuperviewLayoutMargins__
{
    return [super preservesSuperviewLayoutMargins];
}

// (UIView) @property(nonatomic, copy) NSString *restorationIdentifier;
- (void) setRestorationIdentifier___java_lang_String:(NSString*) restorationIdentifier 
{
    [super setRestorationIdentifier:(restorationIdentifier == JAVA_NULL ? nil : restorationIdentifier)];
}

// (UIView) @property(nonatomic, copy) NSString *restorationIdentifier;
- (NSString*) restorationIdentifier__
{
    NSString* re$ult = [super restorationIdentifier];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutXAxisAnchor *rightAnchor;
- (NSLayoutXAxisAnchor*) rightAnchor__
{
    NSLayoutXAxisAnchor* re$ult = [super rightAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) @property(nonatomic) CGFloat rowHeight;
- (void) setRowHeight___double:(double) rowHeight 
{
    [super setRowHeight:rowHeight];
}

// (UITableView) @property(nonatomic) CGFloat rowHeight;
- (double) rowHeight__
{
    return [super rowHeight];
}

// (UIView) @property(nonatomic, readonly) UIEdgeInsets safeAreaInsets;
- (crossmobile_ios_uikit_UIEdgeInsets*) safeAreaInsets__
{
    return [[crossmobile_ios_uikit_UIEdgeInsets alloc] initWithUIEdgeInsets:[super safeAreaInsets]];
}

// (UIView) @property(nonatomic, readonly, strong) UILayoutGuide *safeAreaLayoutGuide;
- (UILayoutGuide*) safeAreaLayoutGuide__
{
    UILayoutGuide* re$ult = [super safeAreaLayoutGuide];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic, getter=isScrollEnabled) BOOL scrollEnabled;
- (void) setScrollEnabled___boolean:(BOOL) scrollEnabled 
{
    [super setScrollEnabled:scrollEnabled];
}

// (UIScrollView) @property(nonatomic, getter=isScrollEnabled) BOOL scrollEnabled;
- (BOOL) isScrollEnabled__
{
    return [super isScrollEnabled];
}

// (UIScrollView) @property(nonatomic) UIEdgeInsets scrollIndicatorInsets;
- (void) setScrollIndicatorInsets___crossmobile_ios_uikit_UIEdgeInsets:(crossmobile_ios_uikit_UIEdgeInsets*) scrollIndicatorInsets 
{
    [super setScrollIndicatorInsets:[scrollIndicatorInsets getUIEdgeInsets]];
}

// (UIScrollView) @property(nonatomic) UIEdgeInsets scrollIndicatorInsets;
- (crossmobile_ios_uikit_UIEdgeInsets*) scrollIndicatorInsets__
{
    return [[crossmobile_ios_uikit_UIEdgeInsets alloc] initWithUIEdgeInsets:[super scrollIndicatorInsets]];
}

// (UIScrollView) @property(nonatomic) BOOL scrollsToTop;
- (void) setScrollsToTop___boolean:(BOOL) scrollsToTop 
{
    [super setScrollsToTop:scrollsToTop];
}

// (UIScrollView) @property(nonatomic) BOOL scrollsToTop;
- (BOOL) scrollsToTop__
{
    return [super scrollsToTop];
}

// (UITableView) @property(nonatomic) CGFloat sectionFooterHeight;
- (void) setSectionFooterHeight___double:(double) sectionFooterHeight 
{
    [super setSectionFooterHeight:sectionFooterHeight];
}

// (UITableView) @property(nonatomic) CGFloat sectionFooterHeight;
- (double) sectionFooterHeight__
{
    return [super sectionFooterHeight];
}

// (UITableView) @property(nonatomic) CGFloat sectionHeaderHeight;
- (void) setSectionHeaderHeight___double:(double) sectionHeaderHeight 
{
    [super setSectionHeaderHeight:sectionHeaderHeight];
}

// (UITableView) @property(nonatomic) CGFloat sectionHeaderHeight;
- (double) sectionHeaderHeight__
{
    return [super sectionHeaderHeight];
}

// (UITableView) @property(nonatomic, strong) UIColor *separatorColor;
- (void) setSeparatorColor___crossmobile_ios_uikit_UIColor:(UIColor*) separatorColor 
{
    [super setSeparatorColor:(separatorColor == JAVA_NULL ? nil : separatorColor)];
}

// (UITableView) @property(nonatomic, strong) UIColor *separatorColor;
- (UIColor*) separatorColor__
{
    UIColor* re$ult = [super separatorColor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
- (void) setSeparatorStyle___int:(int) separatorStyle 
{
    [super setSeparatorStyle:separatorStyle];
}

// (UITableView) @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
- (int) separatorStyle__
{
    return [super separatorStyle];
}

// (UIScrollView) @property(nonatomic) BOOL showsHorizontalScrollIndicator;
- (void) setShowsHorizontalScrollIndicator___boolean:(BOOL) showsHorizontalScrollIndicator 
{
    [super setShowsHorizontalScrollIndicator:showsHorizontalScrollIndicator];
}

// (UIScrollView) @property(nonatomic) BOOL showsHorizontalScrollIndicator;
- (BOOL) showsHorizontalScrollIndicator__
{
    return [super showsHorizontalScrollIndicator];
}

// (UIScrollView) @property(nonatomic) BOOL showsVerticalScrollIndicator;
- (void) setShowsVerticalScrollIndicator___boolean:(BOOL) showsVerticalScrollIndicator 
{
    [super setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
}

// (UIScrollView) @property(nonatomic) BOOL showsVerticalScrollIndicator;
- (BOOL) showsVerticalScrollIndicator__
{
    return [super showsVerticalScrollIndicator];
}

// (UIView) @property(nonatomic, readonly, copy) NSArray<__kindof UIView *> *subviews;
- (NSArray*) subviews__
{
    NSArray* re$ult = [super subviews];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic, readonly) UIView *superview;
- (UIView*) superview__
{
    UIView* re$ult = [super superview];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic) NSInteger tag;
- (void) setTag___int:(int) tag 
{
    [super setTag:tag];
}

// (UIView) @property(nonatomic) NSInteger tag;
- (int) tag__
{
    return [super tag];
}

// (UIView) @property(nonatomic) UIViewTintAdjustmentMode tintAdjustmentMode;
- (void) setTintAdjustmentMode___int:(int) tintAdjustmentMode 
{
    [super setTintAdjustmentMode:tintAdjustmentMode];
}

// (UIView) @property(nonatomic) UIViewTintAdjustmentMode tintAdjustmentMode;
- (int) tintAdjustmentMode__
{
    return [super tintAdjustmentMode];
}

// (UIView) @property(nonatomic, strong) UIColor *tintColor;
- (void) setTintColor___crossmobile_ios_uikit_UIColor:(UIColor*) tintColor 
{
    [super setTintColor:(tintColor == JAVA_NULL ? nil : tintColor)];
}

// (UIView) @property(nonatomic, strong) UIColor *tintColor;
- (UIColor*) tintColor__
{
    UIColor* re$ult = [super tintColor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutYAxisAnchor *topAnchor;
- (NSLayoutYAxisAnchor*) topAnchor__
{
    NSLayoutYAxisAnchor* re$ult = [super topAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIScrollView) @property(nonatomic, readonly, getter=isTracking) BOOL tracking;
- (BOOL) isTracking__
{
    return [super isTracking];
}

// (UIView) @property(readonly, strong) NSLayoutXAxisAnchor *trailingAnchor;
- (NSLayoutXAxisAnchor*) trailingAnchor__
{
    NSLayoutXAxisAnchor* re$ult = [super trailingAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic) CGAffineTransform transform;
- (void) setTransform___crossmobile_ios_coregraphics_CGAffineTransform:(crossmobile_ios_coregraphics_CGAffineTransform*) transform 
{
    [super setTransform:[transform getCGAffineTransform]];
}

// (UIView) @property(nonatomic) CGAffineTransform transform;
- (crossmobile_ios_coregraphics_CGAffineTransform*) transform__
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:[super transform]];
}

// (UIView) @property(nonatomic) BOOL translatesAutoresizingMaskIntoConstraints;
- (void) setTranslatesAutoresizingMaskIntoConstraints___boolean:(BOOL) translatesAutoresizingMaskIntoConstraints 
{
    [super setTranslatesAutoresizingMaskIntoConstraints:translatesAutoresizingMaskIntoConstraints];
}

// (UIView) @property(nonatomic) BOOL translatesAutoresizingMaskIntoConstraints;
- (BOOL) translatesAutoresizingMaskIntoConstraints__
{
    return [super translatesAutoresizingMaskIntoConstraints];
}

// (UIView) @property(nonatomic, getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
- (void) setUserInteractionEnabled___boolean:(BOOL) userInteractionEnabled 
{
    [super setUserInteractionEnabled:userInteractionEnabled];
}

// (UIView) @property(nonatomic, getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
- (BOOL) isUserInteractionEnabled__
{
    return [super isUserInteractionEnabled];
}

// (UIView) @property(nonatomic, readonly) UIUserInterfaceLayoutDirection userInterfaceLayoutDirection;
- (int) userInterfaceLayoutDirection__
{
    return [super userInterfaceLayoutDirection];
}

// (UIView) @property(readonly, strong) UIView *viewForFirstBaselineLayout;
- (UIView*) viewForFirstBaselineLayout__
{
    UIView* re$ult = [super viewForFirstBaselineLayout];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) UIView *viewForLastBaselineLayout;
- (UIView*) viewForLastBaselineLayout__
{
    UIView* re$ult = [super viewForLastBaselineLayout];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(readonly, strong) NSLayoutDimension *widthAnchor;
- (NSLayoutDimension*) widthAnchor__
{
    NSLayoutDimension* re$ult = [super widthAnchor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) @property(nonatomic, readonly) UIWindow *window;
- (UIWindow*) window__
{
    UIWindow* re$ult = [super window];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) - (void)addConstraint:(NSLayoutConstraint *)constraint;
- (void) addConstraint___crossmobile_ios_uikit_NSLayoutConstraint:(NSLayoutConstraint*) constraint 
{
    [super addConstraint:(constraint == JAVA_NULL ? nil : constraint)];
}

// (UIView) - (void)addConstraints:(NSArray<__kindof NSLayoutConstraint *> *)constraints;
- (void) addConstraints___java_util_List:(NSArray*) constraints 
{
    [super addConstraints:(constraints == JAVA_NULL ? nil : constraints)];
}

// (UIView) - (void)addGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer;
- (void) addGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) gestureRecognizer 
{
    [super addGestureRecognizer:(gestureRecognizer == JAVA_NULL ? nil : gestureRecognizer)];
}

// (UIView) - (void)addLayoutGuide:(UILayoutGuide *)layoutGuide;
- (void) addLayoutGuide___crossmobile_ios_uikit_UILayoutGuide:(UILayoutGuide*) layoutGuide 
{
    [super addLayoutGuide:(layoutGuide == JAVA_NULL ? nil : layoutGuide)];
}

// (UIView) - (void)addSubview:(UIView *)view;
- (void) addSubview___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    [super addSubview:(view == JAVA_NULL ? nil : view)];
}

// (UIResponder) - (BOOL)becomeFirstResponder;
- (BOOL) becomeFirstResponder__
{
    return [super becomeFirstResponder];
}

// (UIView) - (void)bringSubviewToFront:(UIView *)view;
- (void) bringSubviewToFront___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    [super bringSubviewToFront:(view == JAVA_NULL ? nil : view)];
}

// (UIView) - (UILayoutPriority)contentCompressionResistancePriorityForAxis:(UILayoutConstraintAxis)axis;
- (float) contentCompressionResistancePriorityForAxis___int:(int) axis 
{
    return [super contentCompressionResistancePriorityForAxis:axis];
}

// (UIView) - (UILayoutPriority)contentHuggingPriorityForAxis:(UILayoutConstraintAxis)axis;
- (float) contentHuggingPriorityForAxis___int:(int) axis 
{
    return [super contentHuggingPriorityForAxis:axis];
}

// (UIView) - (CGPoint)convertPoint:(CGPoint)point fromView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) convertPointFromView___crossmobile_ios_coregraphics_CGPoint_crossmobile_ios_uikit_UIView:(crossmobile_ios_coregraphics_CGPoint*) point :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super convertPoint:[point getCGPoint] fromView:(view == JAVA_NULL ? nil : view)]];
}

// (UIView) - (CGPoint)convertPoint:(CGPoint)point toView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGPoint*) convertPointToView___crossmobile_ios_coregraphics_CGPoint_crossmobile_ios_uikit_UIView:(crossmobile_ios_coregraphics_CGPoint*) point :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGPoint alloc] initWithCGPoint:[super convertPoint:[point getCGPoint] toView:(view == JAVA_NULL ? nil : view)]];
}

// (UIView) - (CGRect)convertRect:(CGRect)rect fromView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGRect*) convertRectFromView___crossmobile_ios_coregraphics_CGRect_crossmobile_ios_uikit_UIView:(crossmobile_ios_coregraphics_CGRect*) rect :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGRect alloc] initWithCGRect:[super convertRect:[rect getCGRect] fromView:(view == JAVA_NULL ? nil : view)]];
}

// (UIView) - (CGRect)convertRect:(CGRect)rect toView:(UIView *)view;
- (crossmobile_ios_coregraphics_CGRect*) convertRectToView___crossmobile_ios_coregraphics_CGRect_crossmobile_ios_uikit_UIView:(crossmobile_ios_coregraphics_CGRect*) rect :(UIView*) view 
{
    return [[crossmobile_ios_coregraphics_CGRect alloc] initWithCGRect:[super convertRect:[rect getCGRect] toView:(view == JAVA_NULL ? nil : view)]];
}

// (UITableView) - (void)deleteRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) deleteRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [super deleteRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// (UITableView) - (__kindof UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier;
- (UITableViewCell*) dequeueReusableCellWithIdentifier___java_lang_String:(NSString*) identifier 
{
    UITableViewCell* re$ult = [super dequeueReusableCellWithIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) - (void)deselectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;
- (void) deselectRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_boolean:(NSIndexPath*) indexPath :(BOOL) animated 
{
    [super deselectRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) animated:animated];
}

// (UIView) - (void)didAddSubview:(UIView *)subview;
- (void) didAddSubview___crossmobile_ios_uikit_UIView:(UIView*) subview 
{
    [super didAddSubview:(subview == JAVA_NULL ? nil : subview)];
}

// (UIView) - (void)didMoveToSuperview;
- (void) didMoveToSuperview__
{
    [super didMoveToSuperview];
}

// (UIView) - (void)didMoveToWindow;
- (void) didMoveToWindow__
{
    [super didMoveToWindow];
}

// (UIView) - (void)drawRect:(CGRect)rect;
- (void) drawRect___crossmobile_ios_coregraphics_CGRect:(crossmobile_ios_coregraphics_CGRect*) rect 
{
    [super drawRect:[rect getCGRect]];
}

// (UIScrollView) - (void)flashScrollIndicators;
- (void) flashScrollIndicators__
{
    [super flashScrollIndicators];
}

// (UIView) - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event;
- (UIView*) hitTest___crossmobile_ios_coregraphics_CGPoint_crossmobile_ios_uikit_UIEvent:(crossmobile_ios_coregraphics_CGPoint*) point :(UIEvent*) event 
{
    UIView* re$ult = [super hitTest:[point getCGPoint] withEvent:(event == JAVA_NULL ? nil : event)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) - (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point;
- (NSIndexPath*) indexPathForRowAtPoint___crossmobile_ios_coregraphics_CGPoint:(crossmobile_ios_coregraphics_CGPoint*) point 
{
    NSIndexPath* re$ult = [super indexPathForRowAtPoint:[point getCGPoint]];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UITableView) - (void)insertRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) insertRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [super insertRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// (UIView) - (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;
- (void) insertSubview___crossmobile_ios_uikit_UIView_int:(UIView*) view :(int) index 
{
    [super insertSubview:(view == JAVA_NULL ? nil : view) atIndex:index];
}

// (UIView) - (CGSize)intrinsicContentSize;
- (crossmobile_ios_coregraphics_CGSize*) intrinsicContentSize__
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[super intrinsicContentSize]];
}

// (UIView) - (void)invalidateIntrinsicContentSize;
- (void) invalidateIntrinsicContentSize__
{
    [super invalidateIntrinsicContentSize];
}

// (UIResponder) - (BOOL)isFirstResponder;
- (BOOL) isFirstResponder__
{
    return [super isFirstResponder];
}

// (UIView) - (void)layoutIfNeeded;
- (void) layoutIfNeeded__
{
    [super layoutIfNeeded];
}

// (UIView) - (void)layoutMarginsDidChange;
- (void) layoutMarginsDidChange__
{
    [super layoutMarginsDidChange];
}

// (UIView) - (void)layoutSubviews;
- (void) layoutSubviews__
{
    [super layoutSubviews];
}

// (UIView) - (BOOL)needsUpdateConstraints;
- (BOOL) needsUpdateConstraints__
{
    return [super needsUpdateConstraints];
}

// (UIResponder) - (UIResponder *)nextResponder;
- (UIResponder*) nextResponder__
{
    UIResponder* re$ult = [super nextResponder];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) - (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event;
- (BOOL) pointInside___crossmobile_ios_coregraphics_CGPoint_crossmobile_ios_uikit_UIEvent:(crossmobile_ios_coregraphics_CGPoint*) point :(UIEvent*) event 
{
    return [super pointInside:[point getCGPoint] withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UITableView) - (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier;
- (void) registerClass___java_lang_Class_java_lang_String:(java_lang_Class*) cellClass :(NSString*) identifier 
{
    [super registerClass:(cellClass == JAVA_NULL ? nil : cellClass) forCellReuseIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
}

// (UITableView) - (void)registerNib:(UINib *)nib forCellReuseIdentifier:(NSString *)identifier;
- (void) registerNib___crossmobile_ios_uikit_UINib_java_lang_String:(UINib*) nib :(NSString*) identifier 
{
    [super registerNib:(nib == JAVA_NULL ? nil : nib) forCellReuseIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
}

// (UITableView) - (void)reloadData;
- (void) reloadData__
{
    [super reloadData];
}

// (UITableView) - (void)reloadRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) reloadRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [super reloadRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// (UIView) - (void)removeConstraint:(NSLayoutConstraint *)constraint;
- (void) removeConstraint___crossmobile_ios_uikit_NSLayoutConstraint:(NSLayoutConstraint*) constraint 
{
    [super removeConstraint:(constraint == JAVA_NULL ? nil : constraint)];
}

// (UIView) - (void)removeConstraints:(NSArray<__kindof NSLayoutConstraint *> *)constraints;
- (void) removeConstraints___java_util_List:(NSArray*) constraints 
{
    [super removeConstraints:(constraints == JAVA_NULL ? nil : constraints)];
}

// (UIView) - (void)removeFromSuperview;
- (void) removeFromSuperview__
{
    [super removeFromSuperview];
}

// (UIView) - (void)removeGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer;
- (void) removeGestureRecognizer___crossmobile_ios_uikit_UIGestureRecognizer:(UIGestureRecognizer*) gestureRecognizer 
{
    [super removeGestureRecognizer:(gestureRecognizer == JAVA_NULL ? nil : gestureRecognizer)];
}

// (UIView) - (void)removeLayoutGuide:(UILayoutGuide *)layoutGuide;
- (void) removeLayoutGuide___crossmobile_ios_uikit_UILayoutGuide:(UILayoutGuide*) layoutGuide 
{
    [super removeLayoutGuide:(layoutGuide == JAVA_NULL ? nil : layoutGuide)];
}

// (UIResponder) - (BOOL)resignFirstResponder;
- (BOOL) resignFirstResponder__
{
    return [super resignFirstResponder];
}

// (UIScrollView) - (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated;
- (void) scrollRectToVisible___crossmobile_ios_coregraphics_CGRect_boolean:(crossmobile_ios_coregraphics_CGRect*) rect :(BOOL) animated 
{
    [super scrollRectToVisible:[rect getCGRect] animated:animated];
}

// (UITableView) - (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void) scrollToNearestSelectedRowAtScrollPosition___int_boolean:(int) scrollPosition :(BOOL) animated 
{
    [super scrollToNearestSelectedRowAtScrollPosition:scrollPosition animated:animated];
}

// (UITableView) - (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void) scrollToRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_int_boolean:(NSIndexPath*) indexPath :(int) scrollPosition :(BOOL) animated 
{
    [super scrollToRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) atScrollPosition:scrollPosition animated:animated];
}

// (UITableView) - (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition;
- (void) selectRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_boolean_int:(NSIndexPath*) indexPath :(BOOL) animated :(int) scrollPosition 
{
    [super selectRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) animated:animated scrollPosition:scrollPosition];
}

// (UIView) - (void)sendSubviewToBack:(UIView *)view;
- (void) sendSubviewToBack___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    [super sendSubviewToBack:(view == JAVA_NULL ? nil : view)];
}

// (UIView) - (void)setContentCompressionResistancePriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
- (void) setContentCompressionResistancePriority___float_int:(float) priority :(int) axis 
{
    [super setContentCompressionResistancePriority:priority forAxis:axis];
}

// (UIView) - (void)setContentHuggingPriority:(UILayoutPriority)priority forAxis:(UILayoutConstraintAxis)axis;
- (void) setContentHuggingPriority___float_int:(float) priority :(int) axis 
{
    [super setContentHuggingPriority:priority forAxis:axis];
}

// (UIScrollView) - (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
- (void) setContentOffset___crossmobile_ios_coregraphics_CGPoint_boolean:(crossmobile_ios_coregraphics_CGPoint*) contentOffset :(BOOL) animated 
{
    [super setContentOffset:[contentOffset getCGPoint] animated:animated];
}

// (UITableView) - (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void) setEditing___boolean_boolean:(BOOL) editing :(BOOL) animated 
{
    [super setEditing:editing animated:animated];
}

// (UIView) - (void)setNeedsDisplay;
- (void) setNeedsDisplay__
{
    [super setNeedsDisplay];
}

// (UIView) - (void)setNeedsLayout;
- (void) setNeedsLayout__
{
    [super setNeedsLayout];
}

// (UIView) - (void)setNeedsUpdateConstraints;
- (void) setNeedsUpdateConstraints__
{
    [super setNeedsUpdateConstraints];
}

// (NSObject) - (void)setValue:(id)value forKey:(NSString *)key;
- (void) setValue___java_lang_Object_java_lang_String:(id) value :(NSString*) key 
{
    [super setValue:(value == JAVA_NULL ? nil : value) forKey:(key == JAVA_NULL ? nil : key)];
}

// (UIView) - (CGSize)sizeThatFits:(CGSize)size;
- (crossmobile_ios_coregraphics_CGSize*) sizeThatFits___crossmobile_ios_coregraphics_CGSize:(crossmobile_ios_coregraphics_CGSize*) size 
{
    return [[crossmobile_ios_coregraphics_CGSize alloc] initWithCGSize:[super sizeThatFits:[size getCGSize]]];
}

// (UIView) - (void)sizeToFit;
- (void) sizeToFit__
{
    [super sizeToFit];
}

// (UIView) - (void)tintColorDidChange;
- (void) tintColorDidChange__
{
    [super tintColorDidChange];
}

// (UIResponder) - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesBegan___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesBegan:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIResponder) - (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesCancelled___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesCancelled:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIResponder) - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesEnded___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesEnded:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIResponder) - (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
- (void) touchesMoved___java_util_Set_crossmobile_ios_uikit_UIEvent:(NSSet*) touches :(UIEvent*) event 
{
    [super touchesMoved:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event)];
}

// (UIScrollView) - (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event inContentView:(UIView *)view;
- (BOOL) touchesShouldBegin___java_util_Set_crossmobile_ios_uikit_UIEvent_crossmobile_ios_uikit_UIView:(NSSet*) touches :(UIEvent*) event :(UIView*) view 
{
    return [super touchesShouldBegin:(touches == JAVA_NULL ? nil : touches) withEvent:(event == JAVA_NULL ? nil : event) inContentView:(view == JAVA_NULL ? nil : view)];
}

// (UIScrollView) - (BOOL)touchesShouldCancelInContentView:(UIView *)view;
- (BOOL) touchesShouldCancelInContentView___crossmobile_ios_uikit_UIView:(UIView*) view 
{
    return [super touchesShouldCancelInContentView:(view == JAVA_NULL ? nil : view)];
}

// (UIView) - (void)updateConstraints;
- (void) updateConstraints__
{
    [super updateConstraints];
}

// (UIView) - (void)updateConstraintsIfNeeded;
- (void) updateConstraintsIfNeeded__
{
    [super updateConstraintsIfNeeded];
}

// (NSObject) - (id)valueForKey:(NSString *)key;
- (id) valueForKey___java_lang_String:(NSString*) key 
{
    id re$ult = [super valueForKey:(key == JAVA_NULL ? nil : key)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// (UIView) - (void)willMoveToSuperview:(UIView *)newSuperview;
- (void) willMoveToSuperview___crossmobile_ios_uikit_UIView:(UIView*) newSuperview 
{
    [super willMoveToSuperview:(newSuperview == JAVA_NULL ? nil : newSuperview)];
}

// (UIView) - (void)willMoveToWindow:(UIWindow *)newWindow;
- (void) willMoveToWindow___crossmobile_ios_uikit_UIWindow:(UIWindow*) newWindow 
{
    [super willMoveToWindow:(newWindow == JAVA_NULL ? nil : newWindow)];
}

// (UIView) - (void)willRemoveSubview:(UIView *)subview;
- (void) willRemoveSubview___crossmobile_ios_uikit_UIView:(UIView*) subview 
{
    [super willRemoveSubview:(subview == JAVA_NULL ? nil : subview)];
}

@end

@implementation UITableView (cm_crossmobile_ios_uikit_UITableView)

// direct binding of: -(instancetype) init;
- (instancetype) __init_crossmobile_ios_uikit_UITableView__
{
    return [self init];
}

// direct binding of: - (instancetype)initWithFrame:(CGRect)frame;
- (instancetype) __init_crossmobile_ios_uikit_UITableView___crossmobile_ios_coregraphics_CGRect:(crossmobile_ios_coregraphics_CGRect*) frame 
{
    return [self initWithFrame:[frame getCGRect]];
}

// direct binding of: - (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style;
- (instancetype) __init_crossmobile_ios_uikit_UITableView___crossmobile_ios_coregraphics_CGRect_int:(crossmobile_ios_coregraphics_CGRect*) frame :(int) style 
{
    return [self initWithFrame:[frame getCGRect] style:style];
}

// direct binding of: @property(nonatomic) BOOL allowsMultipleSelection;
- (void) setAllowsMultipleSelection___boolean:(BOOL) allowsMultipleSelection 
{
    [self setAllowsMultipleSelection:allowsMultipleSelection];
}

// direct binding of: @property(nonatomic) BOOL allowsMultipleSelection;
- (BOOL) allowsMultipleSelection__
{
    return [self allowsMultipleSelection];
}

// direct binding of: @property(nonatomic) BOOL allowsSelection;
- (void) setAllowsSelection___boolean:(BOOL) allowsSelection 
{
    [self setAllowsSelection:allowsSelection];
}

// direct binding of: @property(nonatomic) BOOL allowsSelection;
- (BOOL) allowsSelection__
{
    return [self allowsSelection];
}

// direct binding of: @property(nonatomic, weak) id<UITableViewDataSource> dataSource;
- (void) setDataSource___crossmobile_ios_uikit_UITableViewDataSource:(id<UITableViewDataSource>) dataSource 
{
    objc_setAssociatedObject(self, @selector(setDataSource:), dataSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setDataSource:(dataSource == JAVA_NULL ? nil : dataSource)];
}

// direct binding of: @property(nonatomic, weak) id<UITableViewDataSource> dataSource;
- (id<UITableViewDataSource>) dataSource__
{
    id<UITableViewDataSource> re$ult = [self dataSource];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic, weak) id<UITableViewDelegate> delegate;
- (void) setDelegate___crossmobile_ios_uikit_UITableViewDelegate:(id<UITableViewDelegate>) delegate 
{
    objc_setAssociatedObject(self, @selector(setDelegate:), delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setDelegate:(delegate == JAVA_NULL ? nil : delegate)];
}

// direct binding of: @property(nonatomic, weak) id<UITableViewDelegate> delegate;
- (id<UITableViewDelegate>) tableViewDelegate__
{
    id<UITableViewDelegate> re$ult = [self delegate];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic, getter=isEditing) BOOL editing;
- (void) setEditing___boolean:(BOOL) editing 
{
    [self setEditing:editing];
}

// direct binding of: @property(nonatomic, getter=isEditing) BOOL editing;
- (BOOL) isEditing__
{
    return [self isEditing];
}

// direct binding of: @property(nonatomic) CGFloat estimatedRowHeight;
- (void) setEstimatedRowHeight___double:(double) estimatedRowHeight 
{
    [self setEstimatedRowHeight:estimatedRowHeight];
}

// direct binding of: @property(nonatomic) CGFloat estimatedRowHeight;
- (double) estimatedRowHeight__
{
    return [self estimatedRowHeight];
}

// direct binding of: @property(nonatomic, readonly) NSIndexPath *indexPathForSelectedRow;
- (NSIndexPath*) indexPathForSelectedRow__
{
    NSIndexPath* re$ult = [self indexPathForSelectedRow];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForSelectedRows;
- (NSArray*) indexPathsForSelectedRows__
{
    NSArray* re$ult = [self indexPathsForSelectedRows];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic, readonly) NSArray<NSIndexPath *> *indexPathsForVisibleRows;
- (NSArray*) indexPathsForVisibleRows__
{
    NSArray* re$ult = [self indexPathsForVisibleRows];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic) CGFloat rowHeight;
- (void) setRowHeight___double:(double) rowHeight 
{
    [self setRowHeight:rowHeight];
}

// direct binding of: @property(nonatomic) CGFloat rowHeight;
- (double) rowHeight__
{
    return [self rowHeight];
}

// direct binding of: @property(nonatomic) CGFloat sectionFooterHeight;
- (void) setSectionFooterHeight___double:(double) sectionFooterHeight 
{
    [self setSectionFooterHeight:sectionFooterHeight];
}

// direct binding of: @property(nonatomic) CGFloat sectionFooterHeight;
- (double) sectionFooterHeight__
{
    return [self sectionFooterHeight];
}

// direct binding of: @property(nonatomic) CGFloat sectionHeaderHeight;
- (void) setSectionHeaderHeight___double:(double) sectionHeaderHeight 
{
    [self setSectionHeaderHeight:sectionHeaderHeight];
}

// direct binding of: @property(nonatomic) CGFloat sectionHeaderHeight;
- (double) sectionHeaderHeight__
{
    return [self sectionHeaderHeight];
}

// direct binding of: @property(nonatomic, strong) UIColor *separatorColor;
- (void) setSeparatorColor___crossmobile_ios_uikit_UIColor:(UIColor*) separatorColor 
{
    [self setSeparatorColor:(separatorColor == JAVA_NULL ? nil : separatorColor)];
}

// direct binding of: @property(nonatomic, strong) UIColor *separatorColor;
- (UIColor*) separatorColor__
{
    UIColor* re$ult = [self separatorColor];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
- (void) setSeparatorStyle___int:(int) separatorStyle 
{
    [self setSeparatorStyle:separatorStyle];
}

// direct binding of: @property(nonatomic) UITableViewCellSeparatorStyle separatorStyle;
- (int) separatorStyle__
{
    return [self separatorStyle];
}

// direct binding of: - (void)deleteRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) deleteRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [self deleteRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// direct binding of: - (__kindof UITableViewCell *)dequeueReusableCellWithIdentifier:(NSString *)identifier;
- (UITableViewCell*) dequeueReusableCellWithIdentifier___java_lang_String:(NSString*) identifier 
{
    UITableViewCell* re$ult = [self dequeueReusableCellWithIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (void)deselectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated;
- (void) deselectRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_boolean:(NSIndexPath*) indexPath :(BOOL) animated 
{
    [self deselectRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) animated:animated];
}

// direct binding of: - (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point;
- (NSIndexPath*) indexPathForRowAtPoint___crossmobile_ios_coregraphics_CGPoint:(crossmobile_ios_coregraphics_CGPoint*) point 
{
    NSIndexPath* re$ult = [self indexPathForRowAtPoint:[point getCGPoint]];
    return [(re$ult ? re$ult : JAVA_NULL) retain];
}

// direct binding of: - (void)insertRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) insertRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [self insertRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// direct binding of: - (void)registerClass:(Class)cellClass forCellReuseIdentifier:(NSString *)identifier;
- (void) registerClass___java_lang_Class_java_lang_String:(java_lang_Class*) cellClass :(NSString*) identifier 
{
    [self registerClass:(cellClass == JAVA_NULL ? nil : cellClass) forCellReuseIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
}

// direct binding of: - (void)registerNib:(UINib *)nib forCellReuseIdentifier:(NSString *)identifier;
- (void) registerNib___crossmobile_ios_uikit_UINib_java_lang_String:(UINib*) nib :(NSString*) identifier 
{
    [self registerNib:(nib == JAVA_NULL ? nil : nib) forCellReuseIdentifier:(identifier == JAVA_NULL ? nil : identifier)];
}

// direct binding of: - (void)reloadData;
- (void) reloadData__
{
    [self reloadData];
}

// direct binding of: - (void)reloadRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation;
- (void) reloadRowsAtIndexPaths___java_util_List_int:(NSArray*) indexPaths :(int) animation 
{
    [self reloadRowsAtIndexPaths:(indexPaths == JAVA_NULL ? nil : indexPaths) withRowAnimation:animation];
}

// direct binding of: - (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void) scrollToNearestSelectedRowAtScrollPosition___int_boolean:(int) scrollPosition :(BOOL) animated 
{
    [self scrollToNearestSelectedRowAtScrollPosition:scrollPosition animated:animated];
}

// direct binding of: - (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;
- (void) scrollToRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_int_boolean:(NSIndexPath*) indexPath :(int) scrollPosition :(BOOL) animated 
{
    [self scrollToRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) atScrollPosition:scrollPosition animated:animated];
}

// direct binding of: - (void)selectRowAtIndexPath:(NSIndexPath *)indexPath animated:(BOOL)animated scrollPosition:(UITableViewScrollPosition)scrollPosition;
- (void) selectRowAtIndexPath___crossmobile_ios_foundation_NSIndexPath_boolean_int:(NSIndexPath*) indexPath :(BOOL) animated :(int) scrollPosition 
{
    [self selectRowAtIndexPath:(indexPath == JAVA_NULL ? nil : indexPath) animated:animated scrollPosition:scrollPosition];
}

// direct binding of: - (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void) setEditing___boolean_boolean:(BOOL) editing :(BOOL) animated 
{
    [self setEditing:editing animated:animated];
}

@end
