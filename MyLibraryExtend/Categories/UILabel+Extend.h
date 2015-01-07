//
//  UILabel+Extend.h
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extend)

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                 textColor:(UIColor*)textColor
                     align:(NSTextAlignment)align
                      font:(UIFont*)font
                numberOfLines:(int)numberOfLines;

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                 textColor:(UIColor*)textColor
                     align:(NSTextAlignment)align
                      font:(UIFont*)font;

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                      font:(UIFont*)font;

@end
