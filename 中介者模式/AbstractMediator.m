//
//  AbstractMediator.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractMediator.h"
#import "AbstractClient.h"

@interface AbstractMediator ()

@end

@implementation AbstractMediator

- (void) saveClintProfile:(AbstractClient *)client {
    [self.clients addObject:client];
}

#pragma mark - lazy init

- (NSMutableArray *)clients {
    if (!_clients) {
        _clients = [NSMutableArray new];
    }
    return _clients;
}


@end
