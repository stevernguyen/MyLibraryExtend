//
//  UILabel+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "UILabel+Extend.h"

@implementation UILabel (Extend)

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                 textColor:(UIColor*)textColor
                     align:(NSTextAlignment)align
                      font:(UIFont*)font
                numberOfLines:(int)numberOfLines
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    [label setText:text];
    [label setTextColor:textColor];
    [label setTextAlignment:align];
    [label setFont:font];
    [label setNumberOfLines:numberOfLines];
    [label setBackgroundColor:[UIColor clearColor]];
    return label;
}

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                 textColor:(UIColor*)textColor
                     align:(NSTextAlignment)align
                      font:(UIFont*)font
{
    return [UILabel labelWithFrame:frame text:text textColor:textColor align:align font:font numberOfLines:1];
}

+ (UILabel*)labelWithFrame:(CGRect)frame
                      text:(NSString*)text
                      font:(UIFont*)font
{
    return [UILabel labelWithFrame:frame text:text textColor:[UIColor blackColor] align:NSTextAlignmentLeft font:font numberOfLines:1];
}
 
@end
