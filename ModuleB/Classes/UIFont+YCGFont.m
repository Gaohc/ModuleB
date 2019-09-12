//
//  UIFont+YCGFont.m
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import "UIFont+YCGFont.h"

#define kDefaultFontName @"HelveticaNeue"
#define kDefaultFontSize 14.0

#define kDefaultFontNameForIOS8 @"HelveticaNeue"

@implementation UIFont (YCGFont)

+ (UIFont *)ycg_systemFont {
    return [UIFont ycg_systemFontOfSize:kDefaultFontSize];
}

+ (UIFont *)ycg_systemFontOfSize:(CGFloat)fontSize {
    fontSize = [[self class] validFontSize:fontSize];
    return [UIFont ycg_fontWithName:kDefaultFontName size:fontSize];
}

+ (UIFont *)ycg_fontWithName:(NSString *)fontName {
    fontName = [[self class] validFontName:fontName];
    return [UIFont ycg_fontWithName:fontName size:kDefaultFontSize];
}

+ (UIFont *)ycg_fontWithName:(NSString *)fontName size:(CGFloat)fontSize {
    fontName = [[self class] validFontName:fontName];
    fontSize = [[self class] validFontSize:fontSize];
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (!font) {
        return [UIFont fontWithName:kDefaultFontNameForIOS8 size:fontSize];
    }
    return font;
}

+ (NSString *)validFontName:(NSString *)fontName {
    if (!fontName || (fontName.length == 0)) {
        fontName = kDefaultFontName;
    }
    return fontName;
}

+ (CGFloat)validFontSize:(CGFloat)fontSize {
    if (!fontSize || (fontSize == 0.0)) {
        fontSize = kDefaultFontSize;
    }
    return fontSize;
}

@end
