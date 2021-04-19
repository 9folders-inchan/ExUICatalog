//
//  SwitchViewController.m
//  ExUICatalog
//
//  Created by inchan on 2021/04/19.
//

#import "SwitchViewController.h"
#import "UIColor+Ex.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _designedSwitch = [[Switch alloc] init];
    _designedSwitch.center = self.view.center;
    _designedSwitch.tintColor = [UIColor colorFromRGB:0xFF7E4D];
    [self.view addSubview:_designedSwitch];
}

@end
