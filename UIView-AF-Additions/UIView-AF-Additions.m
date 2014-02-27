#import <QuartzCore/QuartzCore.h>
#import "UIView-AF-Additions.h"

@implementation UIView (AFAdditions)

#pragma mark - Position

- (CGFloat) left
{
  return self.frame.origin.x;
}

- (void) setLeft:(CGFloat)x
{
  CGRect frame = self.frame;
  frame.origin.x = x;
  self.frame = frame;
}

- (CGFloat) right
{
  return self.frame.origin.x + self.frame.size.width;
}

- (void) setRight:(CGFloat)right
{
  CGRect frame = self.frame;
  frame.origin.x = right - frame.size.width;
  self.frame = frame;
}

- (CGFloat) top
{
  return self.frame.origin.y;
}

- (void) setTop:(CGFloat)y
{
  CGRect frame = self.frame;
  frame.origin.y = y;
  self.frame = frame;
}

- (CGFloat) bottom
{
  return self.frame.origin.y + self.frame.size.height;
}

- (void) setBottom:(CGFloat)bottom
{
  CGRect frame = self.frame;
  frame.origin.y = bottom - frame.size.height;
  self.frame = frame;
}

#pragma mark - Center

- (CGFloat) centerX
{
    return self.center.x;
}

- (void) setCenterX:(CGFloat)centerX
{
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat) centerY
{
    return self.center.y;
}

- (void) setCenterY:(CGFloat)centerY
{
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGPoint) centerXWithSuperview
{
    return CGPointMake(self.superview.center.x, self.center.y);
}
- (CGPoint) centerYWithSuperview
{
    return CGPointMake(self.center.x, self.superview.center.y);
}

- (CGPoint) offsetCenterX:(CGFloat)xOffset
{
    return CGPointMake(self.center.x + (xOffset), self.center.y);
}

- (CGPoint) offsetCenterY:(CGFloat)yOffset
{
    return CGPointMake(self.center.x, self.center.y + (yOffset));
}

- (CGPoint) offsetCenterX:(CGFloat)xOffset centerY:(CGFloat)yOffset
{
    return CGPointMake(self.center.x + (xOffset), self.center.y + (yOffset));
}

#pragma mark - Size

- (CGPoint) origin {
    return self.frame.origin;
}

- (void) setOrigin:(CGPoint)origin
{
    CGRect f = self.frame;
    f.origin = origin;
    self.frame = f;
}

- (CGSize) size {
    return self.frame.size;
}

- (void) setSize:(CGSize)size
{
    CGRect f = self.frame;
    f.size = size;
    self.frame = f;
}

- (CGFloat) width
{
  return self.frame.size.width;
}

- (void) setWidth:(CGFloat)width
{
  CGRect frame = self.frame;
  frame.size.width = width;
  self.frame = frame;
}

- (CGFloat) height
{
  return self.frame.size.height;
}

- (void) setHeight:(CGFloat)height
{
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
}

#pragma mark - Border

-(UIColor *) borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void) setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

-(CGFloat) borderWidth
{
    return self.layer.borderWidth;
}

- (void) setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

-(CGFloat) cornerRadius
{
    return self.layer.cornerRadius;
}

- (void) setCornerRadius:(CGFloat)cornerRadius
{
    //self.clipsToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}

- (void) setCornerRadiusAsCircle
{
    self.layer.cornerRadius = self.width/2;
}

- (void) setCornerRadius:(CGFloat)cornerRadius color:(UIColor *)borderColor width:(CGFloat)borderWidth
{
    //self.clipsToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}

- (void) setBorderColor:(UIColor *)borderColor width:(CGFloat)borderWidth
{
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}


#pragma mark - Shadow

- (UIColor *) shadowColor
{
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void) setShadowColor:(UIColor *)shadowColor
{
    self.layer.shadowColor = shadowColor.CGColor;
}

- (CGSize) shadowOffset
{
    return self.layer.shadowOffset;
}

- (void) setShadowOffset:(CGSize)shadowOffset
{
    self.layer.shadowOffset = shadowOffset;
}

- (CGFloat) shadowOpacity
{
    return self.layer.shadowOpacity;
}

- (void) setShadowOpacity:(CGFloat)shadowOpacity
{
    self.layer.shadowOpacity = shadowOpacity;
}

- (CGFloat) shadowRadius
{
    return self.layer.shadowRadius;
}

- (void) setShadowRadius:(CGFloat)shadowRadius
{
    self.layer.shadowRadius = shadowRadius;
}

- (void) setShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius
{
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
}

#pragma mark - AutoLayout fix for animating

- (void) prepForAnimation
{
    UIView *superview = self.superview;
    [self removeFromSuperview];
    self.translatesAutoresizingMaskIntoConstraints = YES;
    [superview addSubview:self];
}

@end
