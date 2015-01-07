//
//  UIButton+Extend.h
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extend)

+ (UIButton*)buttonWithFrame:(CGRect)frame
                  background:(UIImage*)background
             backgroundState:(UIControlState)backgroundState
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel;

+ (UIButton*)buttonWithFrame:(CGRect)frame
                  background:(UIImage*)background
             backgroundState:(UIControlState)backgroundState
                      target:(id)target
                      action:(SEL)sel;

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel;

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       image:(UIImage*)image
                  imageState:(UIControlState)imageState
                       title:(NSString*)title
                  titleState:(UIControlState)titleState
                      target:(id)target
                      action:(SEL)sel;

+ (UIButton*)buttonWithFrame:(CGRect)frame
                       image:(UIImage*)image
                  imageState:(UIControlState)imageState
                      target:(id)target
                      action:(SEL)sel;

- (void)setupFont:(UIFont*)font textColor:(UIColor*)color;

@end
