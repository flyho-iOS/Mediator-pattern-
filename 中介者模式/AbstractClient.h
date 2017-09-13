//
//  AbstractClient.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractMediator;
//AbstractClient作为抽象基类，封装客户类（官方说法叫同事类）的通用属性、方法
@interface AbstractClient : NSObject

@property (nonatomic,strong) AbstractMediator *mediator;
@property (nonatomic,copy)   NSString *name;

- (void) entrustMediator:(AbstractMediator *)mediator;

@end
