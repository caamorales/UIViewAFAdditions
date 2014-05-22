//
//  ViewController.m
//  Demo UIView+AF+Additions
//
//  Created by Melvin Rivera on 5/21/14.
//  Copyright (c) 2014 All Forces. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AF+Additions.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1];
    
    
    UIView *redBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 180, 180)];
    redBox.backgroundColor = [UIColor redColor];
    [redBox setCornerRadius:redBox.width/2 color:[UIColor whiteColor] width:12];
    redBox.clipsToBounds = YES;
    [self.view addSubview:redBox];
    [redBox centerYInSuperview];
    
    UIView *block1 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    block1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    [redBox addSubview:block1];
    
    
    UIView *block2 = [[UIView alloc] initWithFrame:CGRectMake(block1.right + 20, block1.top, block1.width, block1.height)];
    block2.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    [redBox addSubview:block2];
    
    UIView *block3 = [[UIView alloc] initWithFrame:CGRectMake(block1.left, block1.bottom + 20, block1.width, block1.height)];
    block3.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    [redBox addSubview:block3];
    
    
    UIView *block4 = [[UIView alloc] initWithFrame:CGRectMake(block2.left, block3.top, block1.width, block1.height)];
    block4.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    [redBox addSubview:block4];
    
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 80)];
    centerView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.7];
    [centerView setCornerRadiusAsCircle];
    [redBox addSubview:centerView];
    [centerView centerInSuperview];
    
    [redBox offsetCenterX:20];
    
    UIView *redBoxShadow = [[UIView alloc] initWithFrame:redBox.frame];
    redBoxShadow.backgroundColor = [UIColor blackColor];
    [redBoxShadow setCornerRadius:redBoxShadow.width/2];
    [redBoxShadow setShadowColor:[UIColor blackColor] offset:CGSizeMake(0, 0) opacity:1 radius:6];
    [self.view insertSubview:redBoxShadow belowSubview:redBox];
    
    
    UIView *dashedBox = [[UIView alloc] initWithFrame:redBox.frame];
    [dashedBox offsetCenterX:100];
    [dashedBox setLineDashPattern:@[@4, @6] width:4 color:[UIColor whiteColor] cornerRadius:6];
    [dashedBox setMaskedShadowColor:[UIColor blackColor] offset:CGSizeMake(0, 0) opacity:2 radius:6];
    [self.view addSubview:dashedBox];
    
    
    
}


@end
