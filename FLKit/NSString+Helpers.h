//
//  NSString+Helpers.h
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

/// NSString 类别.
@interface NSString (Helpers)

/// 计算字符串的MD5值.
- (NSString *)MD5;

/// 计算字符串的sha1值.
- (NSString *)sha1;

/// 反转字符串.
- (NSString *)reverse;

/// URL编码.
- (NSString *)URLEncode;

/// URL反编码.
- (NSString *)URLDecode;

/// 去掉字符串中的空格符.
- (NSString *)stringByStrippingWhitespace;

/**
 * 从from索引到to索引处截取字符串.
 *
 * @param from 索引.
 * @param to 索引.
 * @return 返回NSString值.
 */
- (NSString *)substringFrom:(NSInteger)from to:(NSInteger)to;

/// 大写字符串第一个字符.
- (NSString *)CapitalizeFirst;

/// 计算字符串里的单词总数.
- (NSUInteger)countWords;

/**
 * 判断是否包指定的含字符串.
 *
 * @param string 指定的字符串.
 * @return 返回BOOL值.
 */
- (BOOL)contains:(NSString *)string;

/// 判断字符串是否为空.
- (BOOL)isBlank;

@end
