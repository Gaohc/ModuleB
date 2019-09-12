//
//  UIViewController+YCGDismissKeyboard.m
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import "UIViewController+YCGDismissKeyboard.h"

@implementation UIViewController (YCGDismissKeyboard)

- (void)ycg_setupForDismissKeyboard {
	UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ycg_touchViewToDismissKeyboard:)];

	__weak typeof(self) weakSelf = self;

	[[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification
	                                                  object:nil
	                                                   queue:[NSOperationQueue mainQueue]
	                                              usingBlock:^(NSNotification *_Nonnull note) {
		                                              __strong typeof(weakSelf) strongSelf = weakSelf;
		                                              [strongSelf.view addGestureRecognizer:tapGR];
	                                              }];

	[[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillHideNotification
	                                                  object:nil
	                                                   queue:[NSOperationQueue mainQueue]
	                                              usingBlock:^(NSNotification *_Nonnull note) {
		                                              __strong typeof(weakSelf) strongSelf = weakSelf;
		                                              [strongSelf.view removeGestureRecognizer:tapGR];
	                                              }];
}

- (void)ycg_touchViewToDismissKeyboard:(id)sender {
	[self.view endEditing:YES];
}

@end
