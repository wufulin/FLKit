//
//  NSLogExtend.m
//  commons
//
//  Created by wufulin on 13-8-26.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSLogExtend.h"

void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...) {
	// Type to hold information about variable arguments.
	va_list ap;
	
	// Initialize a variable argument list.
	va_start(ap, format);
	
	if (![format hasSuffix:@"\n"]) {
		format = [format stringByAppendingFormat:@"\n"];
	}
	
	NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];
	
	// End using variable argument list.
	va_end(ap);
	
	NSString *fileName = [[NSString stringWithUTF8String:file] lastPathComponent];
	fprintf(stderr, "(%s:%d) (%s) %s", [fileName UTF8String],lineNumber,functionName,[body UTF8String]);
	
}

@implementation NSLogExtend

@end
