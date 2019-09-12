//
//  UIView+YCGSwizzleMethod.m
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/17.
//

#import "UIView+YCGSwizzleMethod.h"
#import "NSObject+YCGRuntime.h"

#define kDefaultClassPrefix @"YCG" // 类前缀

@implementation UIView (YCGSwizzleMethod)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self ycg_swizzleMethod:NSSelectorFromString(@"dealloc") withMethod:@selector(swizzle_dealloc)];
    });
}

- (void)swizzle_dealloc {
    NSString *className = NSStringFromClass([self class]);
    if ([className hasPrefix:kDefaultClassPrefix]) {
//        NSLog(@"[%@ dealloc]", NSStringFromClass([self class]));
    }
    //这个老崩溃
//    [self swizzle_dealloc];
}

@end
