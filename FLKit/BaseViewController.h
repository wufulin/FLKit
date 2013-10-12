//
//  AppViewController.h
//  ios-common-lib
//
//  Created by wufulin on 13-8-26.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (UIView *)errorView;
- (UIView *)loadingView;
- (void)showLoadingViewAnimated:(BOOL)animated;
- (void)hideLoadingViewAnimated:(BOOL)animated;
- (void)showErrorViewAnimated:(BOOL)animated;
- (void)hideErrorViewAnimated:(BOOL)animated;

@end
