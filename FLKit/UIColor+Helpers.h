//
//  UIColor+Helpers.h
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

/// UIColor 类别.
@interface UIColor (Helpers)

/**
 * 根据十六进制值，创建UIColor类.
 *
 * @param hex 颜色的十六进制表示值(例如：0x555555).
 * @return UIColor类.
 */
+ (UIColor *)colorWithHex:(int)hex;

@end
