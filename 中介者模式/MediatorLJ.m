//
//  MediatorLJ.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "MediatorLJ.h"
#import "Buyer.h"
#import "Seller.h"

@implementation MediatorLJ

- (void) screenHouseForBuyer:(Buyer *)buyer {
    for (AbstractClient *client in self.clients) {
        if ([client isKindOfClass:[Seller class]]) {
            Seller *seller = (Seller *)client;
            if (seller.price > buyer.money) {
                NSLog(@"%@买不起%@的房子，不把%@介绍给%@",buyer.name,seller.name,seller.name,buyer.name);
            }else{
                NSLog(@"%@买得起%@的房子，把%@介绍给%@",buyer.name,seller.name,seller.name,buyer.name);
            }
        }
    }
}

@end
