//
//  NSLogExtend.h
//  commons
//
//  Created by wufulin on 13-8-26.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG
#define DebugLog(args...) ExtendNSLog(__FILE__,__LINE__,__PRETTY_FUNCTION__,args);
#else
#define DebugLog(args...)
#endif

/**
 * ExtendNSLog函数，用C语言自定义NSLog的输出.
 *
 * @param file 文件名.
 * @param lineNumber 行号.
 * @param functionName 方法名.
 * @param format 参数输出的样式.
 */
void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);

/// 自定义NSLog.
@interface NSLogExtend : NSObject

@end
