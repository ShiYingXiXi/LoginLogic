//
//  SubWindow.m
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import "SYWindow.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation SYWindow

-(void)showVC:(UIViewController<SYWindowProtocol> *)viewController{
    [self setNeedsLayout];
    [self layoutIfNeeded];
    self.hidden=NO;
    
    self.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
    [UIView animateWithDuration:0.5 delay:0.1 usingSpringWithDamping:0.5 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        [self setNeedsLayout];
        [self layoutIfNeeded];
    } completion:nil];
    
    viewController.backBlcok = self.backBlcok;
    viewController.nextBlcok = self.nextBlcok;
    self.rootViewController = viewController;
}

- (void)hidden{

    [self setNeedsLayout];
    [self layoutIfNeeded];
    [UIView animateWithDuration:0.5 delay:0.1 usingSpringWithDamping:0.5 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
        [self setNeedsLayout];
        [self layoutIfNeeded];
    } completion:^(BOOL finished) {
        self.hidden=YES;
        self.rootViewController = nil;
        [self resignKeyWindow];
        [self removeFromSuperview];
    }];
    
}

- (dispatch_block_t)nextBlcok{
    return ^(){
        if (_nextBlcok) {
            _nextBlcok();
        }
        [self hidden];
    };
}

- (dispatch_block_t)backBlcok{
    return ^(){
        if (_backBlcok) {
            _backBlcok();
        }
        [self hidden];
    };
}

@end
