//
//  UIColor+Helpers.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-28.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "UIColor+Helpers.h"

@implementation UIColor (Helpers)

+ (UIColor *)colorWithHex:(int)hex {
	
	int r = (hex >> 16) & 255;
	int g = (hex >> 8) & 255;
	int b = hex & 255;
	
	float rf = (float)r / 255.0f;
	float gf = (float)g / 255.0f;
	float bf = (float)b / 255.0f;
	
	return [UIColor colorWithRed:rf green:gf blue:bf alpha:1.0];
}

@end
