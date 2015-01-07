//
//  UIButton+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "UIButton+Extend.h"

@implementation UIButton (Extend)

+ (UIButton*)buttonWithFrame:(CGRect)frame
                  background:(UIImage*)background
             backgroundState:(UIControlState)backgroundState
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    if (background)
        [button setBackgroundImage:background forState:backgroundState];
    
    if (title)
        [button setTitle:title forState:titleState];
    
    return button;
}

+ (UIButton*)buttonWithFrame:(CGRect)frame
                  background:(UIImage*)background
             backgroundState:(UIControlState)backgroundState
                      target:(id)target
                      action:(SEL)sel
{
    return [UIButton buttonWithFrame:frame background:background backgroundState:backgroundState title:nil titleState:UIControlStateNormal target:target action:sel];
}

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel
{
    return [UIButton buttonWithFrame:frame background:nil backgroundState:UIControlStateNormal title:title titleState:titleState target:target action:sel];
}

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       image:(UIImage*)image
                  imageState:(UIControlState)imageState
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    if (image)
        [button setImage:image forState:imageState];
    
    if (title)
        [button setTitle:title forState:titleState];
    
    return button;
}

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       image:(UIImage*)image
                  imageState:(UIControlState)imageState
                      target:(id)target
                      action:(SEL)sel
{
    return [UIButton buttonWithFrame:frame image:image imageState:UIControlStateNormal title:nil titleState:UIControlStateNormal target:target action:sel];
}

- (void)setupFont:(UIFont *)font textColor:(UIColor *)color
{
    [self.titleLabel setFont:font];
    [self.titleLabel setTextColor:color];
}

@end
