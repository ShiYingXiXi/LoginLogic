//
//  ViewController.m
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import "ViewController.h"
#import "SYWindow.h"
#import "NextVC.h"
#import "LoginViewController.h"

@interface ViewController ()
{
    SYWindow *_subWindow;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark -- 功能：模拟只有登录的状态下才能进入的目标界面，这一部分只是在没有登录的情况下，起作用，在没有登录时，此段代码会跳过，直接进入目标界面 --
- (IBAction)window:(UIButton *)sender {
    
    _subWindow = [[SYWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _subWindow.backBlcok = ^{
    
        NSLog(@"登陆失败了。。。");
    };

    __weak typeof (self) weakSelf = self;
    // 此处是模态进去，可以用导航
    _subWindow.nextBlcok = ^(){
         NSLog(@"登陆成功了。。。");
        __strong typeof (self) strongSelf = weakSelf;
        NextVC *next = [[NextVC alloc]init];
        [strongSelf presentViewController:next animated:NO completion:nil];
    };
    
    LoginViewController *loginVC = [[LoginViewController alloc]init];
    [_subWindow showVC:loginVC];
}


@end
