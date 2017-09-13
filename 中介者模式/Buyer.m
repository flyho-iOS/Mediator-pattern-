//
//  Buyer.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "Buyer.h"
#import "AbstractMediator.h"

@implementation Buyer

- (void)buyHouse {
    [self.mediator screenHouseForBuyer:self];
}

@end
