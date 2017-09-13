//
//  AbstractMediator.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractClient;
@class Buyer;
//AbstractMediator作为抽象基类，封装中介者类的通用属性、方法
@interface AbstractMediator : NSObject

@property (nonatomic,copy) NSString *name;//中介名字

//保留客户资料
- (void) saveClintProfile:(AbstractClient *)client;
//为买家筛选房源
- (void) screenHouseForBuyer:(Buyer *)buyer;
@end
