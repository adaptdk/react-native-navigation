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
	return CGRectGetHeight(((UITabBarController *)((UIWindow *)(UIApplication.sharedApplication.windows[0])).rootViewController).tabBar.frame);
}

@end
