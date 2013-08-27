//
//  Tests.m
//  Tests
//
//  Created by wufulin on 13-8-27.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSLogExtendTests.h"
#import "NSLogExtend.h"

@implementation NSLogExtendTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testDebugLog
{
    DebugLog(@"Customized NSLog output here!");
}

@end
