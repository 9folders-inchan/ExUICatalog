//
//  Switch.h
//  ExUICatalog
//
//  Created by inchan on 2021/04/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Switch : UIControl

@property (nonatomic, strong, nullable) UIImage *onImage;
@property (nonatomic, strong, nullable) UIImage *offImage;
@property(nullable, nonatomic, strong) UIColor *tintColor;

@property(nonatomic,getter=isOn) BOOL on;

- (void)setOn:(BOOL)on animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
