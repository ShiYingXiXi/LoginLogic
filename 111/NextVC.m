//
//  NextVC.m
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import "NextVC.h"

@interface NextVC ()

@end

@implementation NextVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
