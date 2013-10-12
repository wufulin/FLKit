//
//  UIColor+HelperTests.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "UIColor+HelperTests.h"
#import "UIColor+Helpers.h"
#import "Tool.h"

@interface UIColor_HelperTests () {
	UIColor *color;
}
@end

@implementation UIColor_HelperTests

- (void)setUp
{
    [super setUp];
	color = [UIColor colorWithHex:0x504333];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    color = nil;
    [super tearDown];
}

- (void)testColorWithHex {
	UIColor *otherColor = RGBACOLOR(80, 67, 51, 1.0);
	STAssertEqualObjects(color, otherColor, nil);
}
@end
