//
//  UIView+YCGHierarchy.h
//  YingCai
//
//  Created by 58mac on 2018/5/10.
//  Copyright © 2018年 YingCai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YCGHierarchy)

- (UITableView *)viewContainingTableView;
- (UIViewController *)viewContainingController;

@end
