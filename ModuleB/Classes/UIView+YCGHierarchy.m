//
//  UIView+YCGHierarchy.m
//  YingCai
//
//  Created by 58mac on 2018/5/10.
//  Copyright © 2018年 YingCai. All rights reserved.
//

#import "UIView+YCGHierarchy.h"

@implementation UIView (YCGHierarchy)

- (UITableView *)viewContainingTableView {
    UIResponder *nextResponder = self;
    
    do {
        nextResponder = [nextResponder nextResponder];
        
        if ([nextResponder isKindOfClass:[UITableView class]]) {
            return (UITableView *)nextResponder;
        }
    } while (nextResponder);
    
    return nil;
}

- (UIViewController *)viewContainingController {
    UIResponder *nextResponder = self;
    
    do {
        nextResponder = [nextResponder nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    } while (nextResponder);
    
    return nil;
}

@end
