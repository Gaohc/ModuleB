//
//  UIColor+YCGColor.h
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import <UIKit/UIKit.h>

@interface UIColor (YCGColor)

+ (UIColor *)ycg_colorWithHexString:(NSString *)string;
+ (UIColor *)ycg_colorWithHexString:(NSString *)string withAlpha:(CGFloat)alpha;

@end
