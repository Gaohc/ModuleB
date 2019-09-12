//
//  UIFont+YCGFont.h
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import <UIKit/UIKit.h>

@interface UIFont (YCGFont)

+ (UIFont *)ycg_systemFont;
+ (UIFont *)ycg_systemFontOfSize:(CGFloat)fontSize;

+ (UIFont *)ycg_fontWithName:(NSString *)fontName;
+ (UIFont *)ycg_fontWithName:(NSString *)fontName size:(CGFloat)fontSize;

@end
