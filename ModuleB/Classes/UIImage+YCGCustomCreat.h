//
//  UIImage+YCGCustomCreat.h
//  YingCai
//
//  Created by huqi on 2018/4/27.
//  Copyright © 2018年 YingCai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YCGCustomCreat)

+ (UIImage *) imageWithSize:(CGSize)size color:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;
+ (UIImage *) boxblurImage:(UIImage *)image withBlurNumber:(CGFloat)blur;
+ (UIImage *) reDrawImage:(UIImage *)image toSize:(CGSize)toSize;

@end
