//
//  NSDate+CSOMFormat.h
//
//  Created by Luke on 03/10/2012.
//  Copyright (c) 2012 Luke Stringer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (CSOMFormat)

// Returns the date in CSOM DateTime format (used in C#)
// Defined as: the number of 100-nanosecond intervals that have elapsed since 12:00 A.M., January 1, 0001
// MSDN documentation: http://msdn.microsoft.com/en-us/library/dd948679
- (NSString *)CSOMDateTimeFormat;

@end
