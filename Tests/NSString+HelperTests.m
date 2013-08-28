//
//  NSString+HelperTests.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSString+HelperTests.h"
#import "NSString+Helpers.h"

@interface NSString_HelperTests () {
	NSString *text;
}
@end

@implementation NSString_HelperTests

- (void)setUp {
    [super setUp];
    // Set-up code here.
	text = @"netease";
}

- (void)tearDown {
    // Tear-down code here.
	text = nil;
    [super tearDown];
}

- (void)testMD5 {
	NSString *result = [text MD5];
	STAssertEqualObjects(result, @"ef2bccdc9b3bf72a68adeb72e3782f5e", @"md5(netease,32)");
}

- (void)testSHA1 {
	NSString *result = [text sha1];
	STAssertEqualObjects(result, @"a4299c573f297aa82d8bccf4d46c02b177d8769d", @"sha1 digest");
}

- (void)testReverse {
	NSString *expect = @"esaeten";
	NSString *result = [text reverse];
	STAssertEqualObjects(result, expect, @"reverse string");
}

- (void)testCountWords {
	NSString *strings = @"executed 4 tests";
	STAssertTrue(3 == [strings countWords], @"count words");
}

- (void)testContainsWithString {
	STAssertTrue(YES == [text contains:@"ease"], @"netease contains ease substring");
	STAssertTrue(NO == [text contains:@"google"], @"netease doesn't contain google substring");
}

- (void)testSubstringFromTo {
	NSString *result = [text substringFrom:0 to:2];
	STAssertEqualObjects(result, @"ne", @"netease substringfrom 0 to 2 matches ne");
}

- (void)testStringByStrippingWhitespace {
	NSString *result = [@"google com " stringByStrippingWhitespace];
	STAssertEqualObjects(result, @"google com", @"'google com ' trimming whitespace is 'google com'");
}

- (void)testURLEncode {
	NSString *result = [@"http://www.oschina.net/search?scope=bbs&q=C语言" URLEncode];
	STAssertEqualObjects(result, @"http%3A%2F%2Fwww.oschina.net%2Fsearch%3Fscope%3Dbbs%26q%3DC%E8%AF%AD%E8%A8%80", @"url encode");
}

- (void)testURLDecode {
	NSString *result = [@"http%3A%2F%2Fwww.oschina.net%2Fsearch%3Fscope%3Dbbs%26q%3DC%E8%AF%AD%E8%A8%80" URLDecode];
	STAssertEqualObjects(result, @"http%3A%2F%2Fwww.oschina.net%2Fsearch%3Fscope%3Dbbs%26q%3DC语言", @"url decode");
}

- (void)testCapitalizeFirst {
	STAssertEqualObjects([text capitalizedString], @"Netease", @"text capitalizeFirst");
}

- (void)testIsBlank {
	STAssertTrue(YES == [@"  " isBlank], @"'  ' is blank");
}
@end
