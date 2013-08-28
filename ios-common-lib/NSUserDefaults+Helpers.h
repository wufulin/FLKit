//
//  NSUserDefaults+Helpers.h
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

/// NSUserDefaults 类别.
@interface NSUserDefaults (Helpers)

/**
 * 根据指定的key，存储对象.
 *
 * @param object 任意对象.
 * @param key 关键字.
 * @return void.
 */
+ (void)saveObject:(id)object forKey:(NSString *)key;

/**
 * 根据指定的key，提取对象.
 *
 * @param key 关键字.
 * @return 任何类型.
 */
+ (id)retrieveObjectForKey:(NSString *)key;

/**
 * 根据指定的key,删除对象.
 *
 * @param key 关键字.
 * @return void.
 */
+ (void)deleteObjectForKey:(NSString *)key;

@end
