//
//  NSString+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)

#pragma mark - trim/space
- (BOOL)isEmpty
{
    return [[self trimSpace] isEqualToString:@""];
}

- (NSString*)trimSpace
{
    NSString *trimmedString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return trimmedString;
}

#pragma mark - convert to JSON
- (id)convertToJSON
{
    return nil;
}

@end
