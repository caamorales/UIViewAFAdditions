//
//  UIView-AF-Additions
//  Created by Melvin Rivera
//

#import <UIKit/UIKit.h>

@interface UIView (AFAdditions)

#pragma mark - Position

@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat bottom;

#pragma mark - Center

@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;
@property(readonly) CGPoint centerXWithSuperview;
@property(readonly) CGPoint centerYWithSuperview;
- (CGPoint) offsetCenterX:(CGFloat)xOffset;
- (CGPoint) offsetCenterY:(CGFloat)yOffset;
- (CGPoint) offsetCenterX:(CGFloat)xOffset centerY:(CGFloat)yOffset;

#pragma mark - Size

@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;

#pragma mark - Border

@property(nonatomic) UIColor *borderColor;
@property(nonatomic) CGFloat borderWidth;
@property(nonatomic) CGFloat cornerRadius;
- (void) setCornerRadius:(CGFloat)cornerRadius color:(UIColor *)borderColor width:(CGFloat)borderWidth;
- (void) setCornerRadiusAsCircle;
- (void) setBorderColor:(UIColor *)borderColor width:(CGFloat)borderWidth;

#pragma mark - Shadow

@property(nonatomic) UIColor *shadowColor;
@property(nonatomic) CGSize shadowOffset;
@property(nonatomic) CGFloat shadowOpacity;
@property(nonatomic) CGFloat shadowRadius;
- (void) setShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;

#pragma mark - Autolayout

- (void) prepForAnimation;

@end
