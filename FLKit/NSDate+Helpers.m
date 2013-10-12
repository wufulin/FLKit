//
//  NSDate+Helpers.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSDate+Helpers.h"

@implementation NSDate (Helpers)

- (NSString *)formatWithString:(NSString *)format {
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:format];
	NSString *string = [formatter stringFromDate:self];
	return string;
}

- (NSString *)formatWithStyle:(NSDateFormatterStyle)style {
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateStyle:style];
	NSString *string = [formatter stringFromDate:self];
	return string;
}
@end
