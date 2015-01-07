//
//  NSString+Extend.h
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extend)

#pragma mark - trim/space
- (BOOL)isEmpty;
- (NSString*)trimSpace;

#pragma mark - convert to JSON
- (id)convertToJSON;

@end
