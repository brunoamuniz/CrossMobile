// (c) 2019 under LGPL by CrossMobile plugin tools

// crossmobile.ios.coregraphics.CGAffineTransform implementation

#import "crossmobile_ios_coregraphics_CGAffineTransform.h"

@implementation crossmobile_ios_coregraphics_CGAffineTransform

// direct binding of: const CGAffineTransform CGAffineTransformIdentity;
+ (crossmobile_ios_coregraphics_CGAffineTransform*) identity__
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformIdentity];
}

// direct binding of: CGAffineTransform CGAffineTransformMakeRotation ( CGFloat angle );
+ (crossmobile_ios_coregraphics_CGAffineTransform*) makeRotation___double:(double) angle 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformMakeRotation(angle)];
}

// direct binding of: CGAffineTransform CGAffineTransformMakeScale ( CGFloat sx, CGFloat sy );
+ (crossmobile_ios_coregraphics_CGAffineTransform*) makeScale___double_double:(double) sx :(double) sy 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformMakeScale(sx, sy)];
}

// direct binding of: CGAffineTransform CGAffineTransformMakeTranslation ( CGFloat tx, CGFloat ty );
+ (crossmobile_ios_coregraphics_CGAffineTransform*) makeTranslation___double_double:(double) tx :(double) ty 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformMakeTranslation(tx, ty)];
}

// direct binding of: CGAffineTransform CGAffineTransformMake ( CGFloat a, CGFloat b, CGFloat c, CGFloat d, CGFloat tx, CGFloat ty );
- (crossmobile_ios_coregraphics_CGAffineTransform*) __init_crossmobile_ios_coregraphics_CGAffineTransform___double_double_double_double_double_double:(double) a :(double) b :(double) c :(double) d :(double) tx :(double) ty 
{
    return [self initWithCGAffineTransform:CGAffineTransformMake(a, b, c, d, tx, ty)];
}

// direct binding of: CGFloat a;
- (void) setA___double:(double) a 
{
    self->a_double = a;
}

// direct binding of: CGFloat a;
- (double) getA__
{
    return self->a_double;
}

// direct binding of: CGFloat b;
- (void) setB___double:(double) b 
{
    self->b_double = b;
}

// direct binding of: CGFloat b;
- (double) getB__
{
    return self->b_double;
}

// direct binding of: CGFloat c;
- (void) setC___double:(double) c 
{
    self->c_double = c;
}

// direct binding of: CGFloat c;
- (double) getC__
{
    return self->c_double;
}

// direct binding of: CGFloat d;
- (void) setD___double:(double) d 
{
    self->d_double = d;
}

// direct binding of: CGFloat d;
- (double) getD__
{
    return self->d_double;
}

// direct binding of: CGFloat tx;
- (void) setTx___double:(double) tx 
{
    self->tx_double = tx;
}

// direct binding of: CGFloat tx;
- (double) getTx__
{
    return self->tx_double;
}

// direct binding of: CGFloat ty;
- (void) setTy___double:(double) ty 
{
    self->ty_double = ty;
}

// direct binding of: CGFloat ty;
- (double) getTy__
{
    return self->ty_double;
}

// direct binding of: CGAffineTransform CGAffineTransformConcat ( CGAffineTransform t1, CGAffineTransform t2 );
- (crossmobile_ios_coregraphics_CGAffineTransform*) concat___crossmobile_ios_coregraphics_CGAffineTransform:(crossmobile_ios_coregraphics_CGAffineTransform*) t2 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformConcat([self getCGAffineTransform], [t2 getCGAffineTransform])];
}

// direct binding of: CGAffineTransform CGAffineTransformInvert ( CGAffineTransform t );
- (crossmobile_ios_coregraphics_CGAffineTransform*) invert__
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformInvert([self getCGAffineTransform])];
}

// direct binding of: bool CGAffineTransformIsIdentity ( CGAffineTransform t );
- (BOOL) isIdentity__
{
    return CGAffineTransformIsIdentity([self getCGAffineTransform]);
}

// direct binding of: CGAffineTransform CGAffineTransformRotate ( CGAffineTransform t, CGFloat angle );
- (crossmobile_ios_coregraphics_CGAffineTransform*) rotate___double:(double) angle 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformRotate([self getCGAffineTransform], angle)];
}

// direct binding of: CGAffineTransform CGAffineTransformScale ( CGAffineTransform t, CGFloat sx, CGFloat sy );
- (crossmobile_ios_coregraphics_CGAffineTransform*) scale___double_double:(double) sx :(double) sy 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformScale([self getCGAffineTransform], sx, sy)];
}

// direct binding of: CGAffineTransform CGAffineTransformTranslate ( CGAffineTransform t, CGFloat tx, CGFloat ty );
- (crossmobile_ios_coregraphics_CGAffineTransform*) translate___double_double:(double) tx :(double) ty 
{
    return [[crossmobile_ios_coregraphics_CGAffineTransform alloc] initWithCGAffineTransform:CGAffineTransformTranslate([self getCGAffineTransform], tx, ty)];
}

- (instancetype) initWithCGAffineTransform:(CGAffineTransform) other
{
    self = [super init];
    self->a_double = other.a;
    self->b_double = other.b;
    self->c_double = other.c;
    self->d_double = other.d;
    self->tx_double = other.tx;
    self->ty_double = other.ty;
    return self;
}

- (void) setCGAffineTransform:(CGAffineTransform) other
{
    self->a_double = other.a;
    self->b_double = other.b;
    self->c_double = other.c;
    self->d_double = other.d;
    self->tx_double = other.tx;
    self->ty_double = other.ty;
}

- (CGAffineTransform) getCGAffineTransform
{
    CGAffineTransform result;
    result.a = self->a_double;
    result.b = self->b_double;
    result.c = self->c_double;
    result.d = self->d_double;
    result.tx = self->tx_double;
    result.ty = self->ty_double;
    return result;
}

@end
