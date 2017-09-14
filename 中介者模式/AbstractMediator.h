//
//  AbstractMediator.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractClient;
//AbstractMediator作为抽象基类，封装中介者类的通用属性、方法
@interface AbstractMediator : NSObject

@property (nonatomic,copy) NSString *name;//中介名字
@property (nonatomic,strong) NSMutableArray *clients;

//保留客户资料
- (void) saveClintProfile:(AbstractClient *)client;

@end
