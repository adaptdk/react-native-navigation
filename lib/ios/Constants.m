#import "Constants.h"
#import "RNNTabBarController.h"

@implementation Constants

+ (NSDictionary *)getConstants {
	return @{@"topBarHeight": @([self topBarHeight]), @"statusBarHeight": @([self statusBarHeight]), @"bottomTabsHeight": @([self bottomTabsHeight])};
}

+ (CGFloat)topBarHeight {
	if (@available(iOS 11.0, *)) {
		return [UIApplication sharedApplication].keyWindow.safeAreaInsets.top + 54;
	}

	return 54;
}

+ (CGFloat)statusBarHeight {
	return [UIApplication sharedApplication].statusBarFrame.size.height;
}

+ (CGFloat)bottomTabsHeight {
	if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].keyWindow.safeAreaInsets.bottom + 50;
    }

    return 50;
}

@end
