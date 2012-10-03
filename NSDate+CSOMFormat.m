//
//  NSDate+CSOMFormat.m
//
//  Created by Luke on 03/10/2012.
//  Copyright (c) 2012 Luke Stringer. All rights reserved.
//

#import "NSDate+CSOMFormat.h"

@implementation NSDate (CSOMFormat)

// Returns the date in CSOM DateTime format (used in C#)
// Defined as: the number of 100-nanosecond intervals that have elapsed since 12:00 A.M., January 1, 0001
- (NSString *)CSOMDateTimeFormat {
    // Make a date representing 12:00 A.M., January 1, 0001
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    NSDate *jesusDate = [formatter dateFromString:@"01/01/0001"];
    [formatter release];
    
    // Bug in iOS API !!!
    // Time is 1min 15sec too large, so need to adjust to get true 12:00 A.M., January 1, 0001
    // See: http://stackoverflow.com/questions/9070856/nsdatecomponents-acting-up-on-simulator
    jesusDate = [jesusDate dateByAddingTimeInterval:-75];
    
    
    // Find number of seconds since then and mulitply by 1 * 10^7 to convert to nano seconds
    double nanoSecondsSinceJesusDate = [self timeIntervalSinceDate:jesusDate] * 10000000;
    
    // Return as string, removing any decimal places
    return [NSString stringWithFormat:@"%.0f", nanoSecondsSinceJesusDate];
    
}

@end
