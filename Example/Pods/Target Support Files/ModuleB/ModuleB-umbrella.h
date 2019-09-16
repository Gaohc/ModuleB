#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSObject+YCGRuntime.h"
#import "NSString+YCGString.h"
#import "UIColor+YCGColor.h"

FOUNDATION_EXPORT double ModuleBVersionNumber;
FOUNDATION_EXPORT const unsigned char ModuleBVersionString[];

