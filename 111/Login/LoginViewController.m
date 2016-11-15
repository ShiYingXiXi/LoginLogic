//
//  LoginViewController.m
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}
- (IBAction)backBtnClick:(id)sender {
    self.backBlcok();
}
- (IBAction)nextBtnClick:(id)sender {
    self.nextBlcok();
}

@end
