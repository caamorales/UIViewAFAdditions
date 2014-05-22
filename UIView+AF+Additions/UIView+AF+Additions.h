//
//  UIView+AF+Additions
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

- (void) centerInSuperview;
- (void) centerXInSuperview;
- (void) centerYInSuperview;
- (void) offsetCenterX:(CGFloat)xOffset;
- (void) offsetCenterY:(CGFloat)yOffset;
- (void) offsetCenterX:(CGFloat)xOffset centerY:(CGFloat)yOffset;

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
- (void) setLineDashPattern:(NSArray *)lineDashPattern width:(CGFloat)borderWidth color:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void) setLineDashPattern:(NSArray *)lineDashPattern width:(CGFloat)borderWidth color:(UIColor *)borderColor;


#pragma mark - Shadow

@property(nonatomic) UIColor *shadowColor;
@property(nonatomic) CGSize shadowOffset;
@property(nonatomic) CGFloat shadowOpacity;
@property(nonatomic) CGFloat shadowRadius;

- (void) setShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;
- (void) setMaskedShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;

#pragma mark - Autolayout

- (void) prepForAnimation;

@end
