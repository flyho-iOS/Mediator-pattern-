//
//  MediatorLJ.h
//  中介者模式Demo
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "AbstractMediator.h"

//MediatorLJ作为具体的中介者类
@class Buyer;

@interface MediatorLJ : AbstractMediator

//为买家筛选房源
- (void) screenHouseForBuyer:(Buyer *)buyer;

@end
