//
//  SYWindowProtocol.h
//  111
//
//  Created by shiying on 16/8/6.
//  Copyright © 2016年 shiying. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SYWindowProtocol <NSObject>

@property (copy, nonatomic) dispatch_block_t backBlcok;
@property (copy, nonatomic) dispatch_block_t nextBlcok;

@end
