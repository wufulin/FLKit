//
//  NSDate+Helpers.h
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Helpers)

/**
 * 根据指定的样式格式化日期.
 * 
 * @param format 指定的日期样式.
 * @return 返回日期格式化后的NSString值.
 */
- (NSString *)formatWithString:(NSString *)format;

/**
 * 根据系统的样式格式化日期.
 *
 * @param style 系统的默认日期样式，参考@see NSDateFormatterStyle.
 * @return 返回日期格式化后的NSString值.
 */
- (NSString *)formatWithStyle:(NSDateFormatterStyle)style;

@end
