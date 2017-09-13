//
//  Buyer.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractClient.h"

@interface Buyer : AbstractClient

@property (nonatomic,assign) NSInteger money;//买家成副身家

- (void) buyHouse;

@end
