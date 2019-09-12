//
//  UIImage+YCGImage.m
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/10.
//

#import "UIImage+YCGImage.h"

@implementation UIImage (YCGImage)

+ (UIImage *)ycg_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
