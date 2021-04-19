//
//  UIColor+Ex.m
//  ExUICatalog
//
//  Created by inchan on 2021/04/19.
//

#import "UIColor+Ex.h"

@implementation UIColor (Ex)

+ (UIColor *)colorFromRGB:(NSUInteger)c
{
    return [UIColor colorWithRed:((c&0x00FF0000) >> 16)/255.0f
                           green:((c&0x0000FF00) >> 8)/255.0f
                            blue:((c&0x000000FF))/255.0f
                           alpha:1.0f];
}

+ (UIColor *)colorFromARGB:(NSUInteger)c
{
    return [UIColor colorWithRed:((c&0x00FF0000) >> 16)/255.0f
                           green:((c&0x0000FF00) >> 8)/255.0f
                            blue:((c&0x000000FF))/255.0f
                           alpha:((c&0xFF000000) >> 24)/255.0f];
}

+ (UIColor *)colorFromRGB:(NSUInteger)c alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((c&0x00FF0000) >> 16)/255.0f
                           green:((c&0x0000FF00) >> 8)/255.0f
                            blue:((c&0x000000FF))/255.0f
                           alpha:alpha];
}

@end
