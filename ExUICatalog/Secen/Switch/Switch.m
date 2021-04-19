//
//  Switch.m
//  ExUICatalog
//
//  Created by inchan on 2021/04/19.
//

#import "Switch.h"

@interface Switch ()
@property (nonatomic, weak) IBOutlet UIStackView* stackView;
@property (nonatomic, weak) IBOutlet UIImageView* onImageView;
@property (nonatomic, weak) IBOutlet UIImageView* offImageView;
@property (nonatomic, weak) IBOutlet UIView *selectionView;
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *selectionViewLeadingConstraint;
@end

@implementation Switch

#pragma mark - Lifecycle

- (instancetype)init
{
    UINib *nib = [UINib nibWithNibName:@"Switch" bundle:[NSBundle mainBundle]];
    NSArray *nibs = [nib instantiateWithOwner:nil options:nil];
    if (nibs.count > 0) {
        return [[nib instantiateWithOwner:self options:nil] firstObject];
    }
    
    self = [super init];
    if (self) {
        [self configu];
    }
    return self;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configu];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch= [touches anyObject];
    CGPoint point = [touch locationInView:self];
    BOOL isOn = point.x < self.frame.size.width / 2;
    [self setOn:isOn animated:true];
}

#pragma mark - Configu

- (void)configu {
    self.layer.cornerRadius = self.frame.size.height / 2;
    self.layer.borderColor = UIColor.lightGrayColor.CGColor;
    self.layer.borderWidth = 1.0f;
    _stackView.layer.cornerRadius = _stackView.frame.size.height / 2;
    _selectionView.layer.cornerRadius = _selectionView.frame.size.height / 2;
    _selectionView.layer.borderWidth = 2.0f;
    [self setTintColor:_tintColor];
    [self setOn:_on];
}

#pragma mark - Setter

- (void)setTintColor:(UIColor *)tintColor {
    self.onImageView.tintColor = tintColor;
    self.offImageView.tintColor = tintColor;
    _selectionView.layer.borderColor = tintColor.CGColor;
    _selectionView.backgroundColor = [tintColor colorWithAlphaComponent:0.5];
    _tintColor = tintColor;
}

- (void)setOn:(BOOL)on {
    if (on) {
        _onImageView.alpha = 0;
        _offImageView.alpha = 1;
        _selectionViewLeadingConstraint.constant = [self defaultLeading];
    }
    else {
        _onImageView.alpha = 1;
        _offImageView.alpha = 0;
        _selectionViewLeadingConstraint.constant = self.frame.size.width - _selectionView.frame.size.width - [self defaultLeading];
    }
    _on = on;
}

- (void)setOn:(BOOL)on animated:(BOOL)animated {
    
    NSTimeInterval duration = animated ? [self animationDuration] : 0;
    [UIView animateWithDuration:duration animations:^{
        [self setOn:on];
        [self layoutIfNeeded];
    }];
}

#pragma mark - Private

- (NSTimeInterval)animationDuration {
    return 0.35;
}

- (CGFloat)defaultLeading {
    return 4.0f;
}

@end
