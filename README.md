UIView-AF-Additions
=============================

UIVIew convenience category for frame and borders

### CocoaPods
```
pod 'UIView-AF-Additions', :git => 'https://github.com/melvitax/UIViewAFAdditions.git'
```

### Header
```
#import "UIView+AF+Additions.h"
```

### Position
```Objective-C
@property(nonatomic) CGFloat left;  
@property(nonatomic) CGFloat right;  
@property(nonatomic) CGFloat top;  
@property(nonatomic) CGFloat bottom;  
```

### Center
```Objective-C
@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;

- (void) centerInSuperview;
- (void) centerXInSuperview;
- (void) centerYInSuperview;
- (void) offsetCenterX:(CGFloat)xOffset;
- (void) offsetCenterY:(CGFloat)yOffset;
- (void) offsetCenterX:(CGFloat)xOffset centerY:(CGFloat)yOffset;
```

### Size
```Objective-C
@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;
```

### Border
```Objective-C
@property(nonatomic) UIColor *borderColor;
@property(nonatomic) CGFloat borderWidth;
@property(nonatomic) CGFloat cornerRadius;

- (void) setCornerRadius:(CGFloat)cornerRadius color:(UIColor *)borderColor width:(CGFloat)borderWidth;
- (void) setCornerRadiusAsCircle;
- (void) setBorderColor:(UIColor *)borderColor width:(CGFloat)borderWidth;
- (void) setLineDashPattern:(NSArray *)lineDashPattern width:(CGFloat)borderWidth color:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
- (void) setLineDashPattern:(NSArray *)lineDashPattern width:(CGFloat)borderWidth color:(UIColor *)borderColor;
```

### Shadow
```Objective-C
@property(nonatomic) UIColor *shadowColor;
@property(nonatomic) CGSize shadowOffset;
@property(nonatomic) CGFloat shadowOpacity;
@property(nonatomic) CGFloat shadowRadius;

- (void) setShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;
- (void) setMaskedShadowColor:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;
```

### Autolayout
```Objective-C
- (void) prepForAnimation;
```
