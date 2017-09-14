//
//  Buyer.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "Buyer.h"
#import "MediatorLJ.h"
@implementation Buyer

- (void)buyHouse {
    //mediator属性是从抽象类继承过来，这里要声明一下mediator属性的类型
    [(MediatorLJ *)(self.mediator) screenHouseForBuyer:self];
}

@end
