//
//  NSDate+HelperTests.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSDate+HelperTests.h"
#import "NSDate+Helpers.h"

@interface NSDate_HelperTests () {
	NSDate *date;
}
@end

@implementation NSDate_HelperTests

- (void)setUp
{
    [super setUp];
	date = [NSDate date];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    date = nil;
    [super tearDown];
}

- (void)testFormatWithString {
	NSString *dateString = [date formatWithString:@"yyyy-MM-dd"];
	STAssertEqualObjects(dateString, @"2013-08-28", nil);
}

- (void)testFormatWithStyle {
	NSString *dateString = [date formatWithStyle:NSDateFormatterShortStyle];
	STAssertEqualObjects(dateString, @"8/28/13", nil);
}
@end
