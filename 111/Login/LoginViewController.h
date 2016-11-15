//
//  LoginViewController.h
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SYWindowProtocol.h"

@interface LoginViewController : UIViewController<SYWindowProtocol>

@property (copy, nonatomic) dispatch_block_t backBlcok;
@property (copy, nonatomic) dispatch_block_t nextBlcok;

@end
