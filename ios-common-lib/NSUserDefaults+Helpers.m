//
//  NSUserDefaults+Helpers.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "NSUserDefaults+Helpers.h"

@implementation NSUserDefaults (Helpers)

+ (void)saveObject:(id)object forKey:(NSString *)key {
	NSUserDefaults *defaults = [self standardUserDefaults];
	[defaults setObject:object forKey:key];
	[defaults synchronize];
}

+ (id)retrieveObjectForKey:(NSString *)key {
	return [[self standardUserDefaults] objectForKey:key];
}

+ (void)deleteObjectForKey:(NSString *)key {
	NSUserDefaults *defaults = [self standardUserDefaults];
	[defaults removeObjectForKey:key];
	[defaults synchronize];
}

@end
