//
//  NSDate+Extend.m
//  MyLibraryExtend
//
//  Created by Quynh Nguyen on 1/7/15.
//  Copyright (c) 2015 Quynh Nguyen. All rights reserved.
//

#import "NSDate+Extend.h"
#import <UIKit/UIKit.h>

@implementation NSDate (Extend)

+ (NSDate*)dateWithDay:(int)day month:(int)month year:(int)year
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *date = [[NSDateComponents alloc] init];
    date.timeZone = [NSTimeZone defaultTimeZone];
    date.year     = year;
    date.month    = month;
    date.day      = day;
    return [cal dateFromComponents:date];
}

+ (int)numberOfDaysBetween:(NSDate*)startDate and:(NSDate*)endDate
{
    NSInteger totalWeekOfYear = [NSDate numberOfDaysBetween:startDate and:endDate];
    if (totalWeekOfYear % 7 == 0) {
        totalWeekOfYear = (NSInteger)totalWeekOfYear / 7;
    }
    else {
        totalWeekOfYear = (NSInteger)totalWeekOfYear / 7 + 1;
    }
    
    return totalWeekOfYear;
}

+ (int)numberOfWeekBetween:(NSDate*)startDate and:(NSDate*)endDate
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSCalendarUnit unitFlags      = (NSYearCalendarUnit | NSMonthCalendarUnit);
    NSDateComponents *comps_since = [cal components:unitFlags fromDate:startDate];
    NSDateComponents *comps_end   = [cal components:unitFlags fromDate:endDate];
    
    NSUInteger total_month = 0;
    if (comps_end.year > comps_since.year)
        total_month = (comps_end.year - comps_since.year) * 12;
    
    total_month += comps_end.month - comps_since.month + 1;
    return total_month;
}

+ (int)numberOfMonthBetween:(NSDate*)startDate and:(NSDate*)endDate
{
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSCalendarUnit unitFlags      = (NSYearCalendarUnit | NSMonthCalendarUnit);
    NSDateComponents *comps_since = [cal components:unitFlags fromDate:startDate];
    NSDateComponents *comps_end   = [cal components:unitFlags fromDate:endDate];
    
    NSUInteger total_month = 0;
    if (comps_end.year > comps_since.year)
        total_month = (comps_end.year - comps_since.year) * 12;
    
    total_month += comps_end.month - comps_since.month + 1;
    return total_month;
}

- (NSDate *)addDays:(int)day
{
    return [self dateByAddingTimeInterval:day * 60 * 60 * 24];
}

@end
