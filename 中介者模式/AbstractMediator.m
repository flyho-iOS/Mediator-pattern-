//
//  AbstractMediator.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractMediator.h"
#import "AbstractClient.h"
#import "Seller.h"
#import "Buyer.h"
@interface AbstractMediator ()

@property (nonatomic,strong) NSMutableArray *clients;

@end

@implementation AbstractMediator

- (void) saveClintProfile:(AbstractClient *)client {
    [self.clients addObject:client];
}

- (void) screenHouseForBuyer:(Buyer *)buyer {
    for (AbstractClient *client in self.clients) {
        if ([client isKindOfClass:[Seller class]]) {
            Seller *seller = (Seller *)client;
            if (seller.price > buyer.money) {
                NSLog(@"%@买不起%@的房子，不推荐",buyer.name,seller.name);
            }else{
                NSLog(@"%@买得起%@的房子，推荐",buyer.name,seller.name);
            }
        }
    }
}

#pragma mark - lazy init

- (NSMutableArray *)clients {
    if (!_clients) {
        _clients = [NSMutableArray new];
    }
    return _clients;
}

@end
