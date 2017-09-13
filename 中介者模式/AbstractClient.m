//
//  AbstractClient.m
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractClient.h"
#import "AbstractMediator.h"

@implementation AbstractClient

- (void) entrustMediator:(AbstractMediator *)mediator {
    self.mediator = mediator;
    NSLog(@"%@委托给%@帮忙办事！",self.name,mediator.name);
}
@end
