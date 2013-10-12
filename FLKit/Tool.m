//
//  Tool.m
//  ios-common-lib
//
//  Created by wufulin on 13-9-11.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "Tool.h"

@implementation Tool

+ (void)setNavigationBarBackground:(UINavigationBar *)navigationBar withImageName:(NSString *)imageName {
	[navigationBar setBackgroundImage:[UIImage imageNamed:imageName] forBarMetrics:UIBarMetricsDefault];
}

@end
