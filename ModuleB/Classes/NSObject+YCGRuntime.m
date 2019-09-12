//
//  NSObject+YCGRuntime.m
//  YCGCategoriesKit
//
//  Created by 58mac on 2018/4/2.
//

#import "NSObject+YCGRuntime.h"
#import <objc/runtime.h>

@implementation NSObject (YCGRuntime)

+ (void)ycg_swizzleMethod:(SEL)originalMethod withMethod:(SEL)newMethod {
	ycg_method_swizzle(self.class, originalMethod, newMethod);
}

BOOL ycg_method_swizzle(Class klass, SEL origSel, SEL altSel) {
	if (!klass)
		return NO;

	Method __block origMethod, __block altMethod;

	void (^find_methods)(void) = ^{
		unsigned methodCount = 0;
		Method *methodList = class_copyMethodList(klass, &methodCount);

		origMethod = altMethod = NULL;

		if (methodList)
			for (unsigned i = 0; i < methodCount; ++i) {
				if (method_getName(methodList[i]) == origSel)
					origMethod = methodList[i];

				if (method_getName(methodList[i]) == altSel)
					altMethod = methodList[i];
			}

		free(methodList);
	};

	find_methods();

	if (!origMethod) {
		origMethod = class_getInstanceMethod(klass, origSel);

		if (!origMethod)
			return NO;

		if (!class_addMethod(klass, method_getName(origMethod), method_getImplementation(origMethod), method_getTypeEncoding(origMethod)))
			return NO;
	}

	if (!altMethod) {
		altMethod = class_getInstanceMethod(klass, altSel);

		if (!altMethod)
			return NO;

		if (!class_addMethod(klass, method_getName(altMethod), method_getImplementation(altMethod), method_getTypeEncoding(altMethod)))
			return NO;
	}

	find_methods();

	if (!origMethod || !altMethod)
		return NO;

	method_exchangeImplementations(origMethod, altMethod);

	return YES;
}

@end
