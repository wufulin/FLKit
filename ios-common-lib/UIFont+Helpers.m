//
//  UIFont+Helpers.m
//  ios-common-lib
//
//  Created by wufulin on 13-9-25.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "UIFont+Helpers.h"

static NSString *heiti = @"STHeitiSC-Light";
static NSString *helvetica = @"Helvetica";

@implementation UIFont (Helpers)

+ (UIFont *)heiti
{
	return [UIFont fontWithName:heiti size:[UIFont systemFontSize]];
}

+ (UIFont *)heitiWithFontSize:(CGFloat)size
{
	return [UIFont fontWithName:heiti size:size];
}

+ (UIFont *)helvetica
{
	return [UIFont fontWithName:helvetica size:[UIFont systemFontSize]];
}

+ (UIFont *)helveticaWithFontSize:(CGFloat)size
{
	return [UIFont fontWithName:helvetica size:size];
}

@end
