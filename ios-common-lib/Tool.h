//
//  Tool.h
//  ios-common-lib
//
//  Created by wufulin on 13-9-11.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// 颜色宏定义.
#define RGBACOLOR(r,g,b,a) ([UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)])
#define RGBCOLOR(r,g,b)	([UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0])

// 应用屏幕高度宏定义（不包含状态栏）.
#define APP_HEIGHT (CGRectGetHeight([UIScreen mainScreen].applicationFrame))

// 手机屏幕高低宏定义（包括状态栏）.
#define SCREEN_HEIGHT (CGRectGetHeight([UIScreen mainScreen].bounds))

// 状态栏高度宏定义.
#define STATUSBAR_HEIGHT (CGRectGetHeight([[UIApplication sharedApplication] statusBarFrame]))

// 导航条高度宏定义.
#define NAVIGATIONBAR_HEIGHT 44.0

// 标签栏高度宏定义.
#define TABBAR_HEIGHT 49.0

// 打印视图坐标和宽高宏定义.
#define PRINTF(rect) NSLog(@"x = %.2f,y = %.2f,width = %.2f,height = %.2f",(rect).origin.x,(rect).origin.y,(rect).size.width,(rect).size.height)

// 判断设备是否为iPhone5尺寸的宏定义·
#define IS_IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

// 判断设备是否为iPad的宏定义.
#define IS_PAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

@interface Tool : NSObject

/**
 * 设置导航条的背景图片.
 *
 * @param navigationBar 导航条.
 * @param imageName 图片名.
 * @return void
 */
+ (void)setNavigationBarBackground:(UINavigationBar *)navigationBar
					 withImageName:(NSString *)imageName;

@end
