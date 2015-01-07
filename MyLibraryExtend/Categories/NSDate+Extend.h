//
//  NSDate+Extend.h
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extend)

+ (NSDate*)dateWithDay:(int)day month:(int)month year:(int)year;

+ (int)numberOfDaysBetween:(NSDate*)startDate and:(NSDate*)endDate;
+ (int)numberOfWeekBetween:(NSDate*)startDate and:(NSDate*)endDate;
+ (int)numberOfMonthBetween:(NSDate*)startDate and:(NSDate*)endDate;

- (NSDate*)addDays:(int)day;


@end
