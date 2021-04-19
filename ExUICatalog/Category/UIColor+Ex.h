//
//  UIColor+Ex.h
//  ExUICatalog
//
//  Created by inchan on 2021/04/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Ex)

+ (UIColor *)colorFromRGB:(NSUInteger)c;
+ (UIColor *)colorFromARGB:(NSUInteger)c;
+ (UIColor *)colorFromRGB:(NSUInteger)c alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
