//
//  UIView+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "UIView+Extend.h"

@implementation UIView (Extend)

#pragma mark - gesture
- (void)addTapGesture:(id)target action:(SEL)sel
{
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:sel];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:gesture];
}

- (void)addPanGesture:(id)target action:(SEL)sel
{
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:target action:sel];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:gesture];
}

- (void)addLongPressGesture:(id)target action:(SEL)sel
{
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc] initWithTarget:target action:sel];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:gesture];
}

#pragma mark - frame
- (void)setFrameX:(CGFloat)x
{
    CGRect f = self.frame;
    f.origin.x = x;
    self.frame = f;
}

- (void)setFrameY:(CGFloat)y
{
    [UIView animateWithDuration:<#(NSTimeInterval)#> animations:<#^(void)animations#>]
    CGRect f = self.frame;
    f.origin.y = y;
    self.frame = f;
}

- (void)setFrameW:(CGFloat)w
{
    CGRect f = self.frame;
    f.size.width = w;
    self.frame = f;
}

- (void)setFrameH:(CGFloat)h
{
    CGRect f = self.frame;
    f.size.height = h;
    self.frame = f;
}

@end
