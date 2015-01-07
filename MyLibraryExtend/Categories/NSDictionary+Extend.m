//
//  NSDictionary+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "NSDictionary+Extend.h"

@implementation NSDictionary (Extend)

+ (id)jsonWithFile:(NSString *)filePath
{
    NSError *err      = nil;
    NSString *content = [NSString stringWithContentsOfFile:filePath
                                                  encoding:NSJapaneseEUCStringEncoding
                                                     error:&err];

    NSData *data      = [content dataUsingEncoding:NSUTF8StringEncoding];
    id result         = [NSJSONSerialization JSONObjectWithData:data
                                                options:kNilOptions
                                                  error:nil];
    return result;
}

@end
