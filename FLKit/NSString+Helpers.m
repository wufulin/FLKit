//
//  NSString+Helpers.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSString+Helpers.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Helpers)

- (NSString *)MD5 {
	const char *str = [self UTF8String];
	unsigned char result[CC_MD5_DIGEST_LENGTH];
	CC_MD5(str, strlen(str), result);
	NSMutableString *md5Password = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
	for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
		[md5Password appendFormat:@"%02x",result[i]];
	}
	return md5Password;
}

- (NSString *)sha1 {
	const char *cstr = [self cStringUsingEncoding:NSUTF8StringEncoding];
	NSData *data = [NSData dataWithBytes:cstr length:self.length];
	
	uint8_t digest[CC_SHA1_DIGEST_LENGTH];
	
	CC_SHA1(data.bytes, data.length, digest);
	
	NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
	
	for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
		[output appendFormat:@"%02x",digest[i]];
	}
	return output;
}

- (NSString *)reverse {
	NSInteger length = [self length];
	unichar *buffer = calloc(length, sizeof(unichar));
	
	[self getCharacters:buffer range:NSMakeRange(0, length)];
	
	for (int i = 0, mid = ceil(length/2.0); i < mid; i++) {
		unichar c = buffer[i];
		buffer[i] = buffer[length-i-1];
		buffer[length-i-1] = c;
	}
	
	NSString *s = [[NSString alloc] initWithCharacters:buffer length:length];
	buffer = nil;
	return s;
}

- (NSUInteger)countWords {
	__block NSUInteger wordCount = 0;
	[self enumerateSubstringsInRange:NSMakeRange(0, self.length)
							 options:NSStringEnumerationByWords
						  usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
							  wordCount ++;
						  }];
	return wordCount;
}

- (NSString *)stringByStrippingWhitespace {
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)substringFrom:(NSInteger)from to:(NSInteger)to {
	NSString * rightPart = [self substringFromIndex:from];
	return [rightPart substringToIndex:to-from];
}

- (NSString *)URLEncode {
	CFStringRef encoded = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                  (__bridge CFStringRef)self,
                                                                  NULL,
                                                                  CFSTR(":/?#[]@!$&'()*+,;="),
                                                                  kCFStringEncodingUTF8);
    return [NSString stringWithString:(__bridge_transfer NSString *)encoded];
}

- (NSString *)URLDecode {
	CFStringRef decoded = CFURLCreateStringByReplacingPercentEscapes( kCFAllocatorDefault,
                                                                     (__bridge CFStringRef)self,
                                                                     CFSTR(":/?#[]@!$&'()*+,;=") );
    return [NSString stringWithString:(__bridge_transfer NSString *)decoded];
}

- (NSString *)CapitalizeFirst {
	if ([self length] == 0) {
		return self;
	}
	return [self stringByReplacingCharactersInRange:NSMakeRange(0, 1)
										   withString:[[self substringWithRange:NSMakeRange(0, 1)] capitalizedString]];
}

- (BOOL)isBlank {
	if ([[self stringByStrippingWhitespace] isEqualToString:@""]) {
		return YES;
	}
	return NO;
}

- (BOOL)contains:(NSString *)string {
	NSRange range = [self rangeOfString:string];
	return (range.location != NSNotFound);
}

@end
