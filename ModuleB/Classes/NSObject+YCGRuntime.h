//
//  NSObject+YCGRuntime.h
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import <Foundation/Foundation.h>

@interface NSObject (YCGRuntime)

+ (void)ycg_swizzleMethod:(SEL)originalMethod withMethod:(SEL)newMethod;

@end
