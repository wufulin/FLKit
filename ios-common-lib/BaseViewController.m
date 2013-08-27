//
//  AppViewController.m
//  ios-common-lib
//
//  Created by wufulin on 13-8-26.
//  Copyright (c) 2013年 netease. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Common Methods
- (UIView *)loadingView {
	return nil;
}

- (UIView *)errorView {
	return nil;
}

- (void)showLoadingViewAnimated:(BOOL)animated {
	UIView *loadingView = [self loadingView];
	if (loadingView) {
		loadingView.alpha = 0.0f;
		[self.view addSubview:loadingView];
		[self.view bringSubviewToFront:loadingView];
		
		double duration = animated ? 0.4f:0.0f;
		[UIView animateWithDuration:duration
						 animations:^{
							 loadingView.alpha = 1.0f;
						 }];
	}
}

- (void)hideLoadingViewAnimated:(BOOL)animated {
	UIView *loadingView = [self loadingView];
	if (loadingView) {
		double duration = animated ? 0.4f:0.0f;
		[UIView animateWithDuration:duration
						 animations:^{
							 loadingView.alpha = 0.0f;
						 } completion:^(BOOL finished) {
							 [loadingView removeFromSuperview];
						 }];
	}
}

- (void)showErrorViewAnimated:(BOOL)animated {
	UIView *errorView = [self errorView];
	if (errorView) {
		errorView.alpha = 0.0f;
		[self.view addSubview:errorView];
		[self.view bringSubviewToFront:errorView];
		
		double duration = animated ? 0.4f:0.0f;
		[UIView animateWithDuration:duration
						 animations:^{
							 errorView.alpha = 1.0f;
						 }];
	}
}

- (void)hideErrorViewAnimated:(BOOL)animated {
	UIView *errorView = [self errorView];
	if (errorView) {
		double duration = animated ? 0.4f:0.0f;
		[UIView animateWithDuration:duration
						 animations:^{
							 errorView.alpha = 0.0f;
						 } completion:^(BOOL finished) {
							 [errorView removeFromSuperview];
						 }];
	}
}

@end
