//
//  Seller.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractClient.h"

@interface Seller : AbstractClient

@property (nonatomic,assign) NSInteger price;//卖家房子的价值

@end
