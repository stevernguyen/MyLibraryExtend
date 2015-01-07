//
//  UIView+Extend.h
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extend)

#pragma mark - gesture
- (void)addTapGesture:(id)target action:(SEL)sel;
- (void)addPanGesture:(id)target action:(SEL)sel;
- (void)addLongPressGesture:(id)target action:(SEL)sel;

#pragma mark - frame
- (void)setFrameX:(CGFloat)x;
- (void)setFrameY:(CGFloat)y;
- (void)setFrameW:(CGFloat)w;
- (void)setFrameH:(CGFloat)h;

@end
