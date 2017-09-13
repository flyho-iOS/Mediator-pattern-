//
//  main.m
//  中介者模式
//
//  Created by fly on 2017/9/13.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorLJ.h"
#import "Seller.h"
#import "Buyer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //从前，有家地产中介叫伟恒地产
        MediatorLJ *weihengMdr = [[MediatorLJ alloc] init];
        weihengMdr.name = @"伟恒地产";
        
        //一天，小民有套500万的别墅想卖了，委托伟恒地产帮忙卖
        Seller *xiaoMin = [[Seller alloc] init];
        xiaoMin.name = @"小民";
        xiaoMin.price = 5000000;//看看有没写少个0，是的话买家就赚大发了
        [xiaoMin entrustMediator:weihengMdr];
        //伟恒地产留下小民信息
        [weihengMdr saveClintProfile:xiaoMin];
        
        //第二天，小焰有套100万的楼梯房想卖了，委托伟恒地产帮忙卖
        Seller *xiaoYan = [[Seller alloc] init];
        xiaoYan.name = @"小焰";
        xiaoYan.price = 1000000;
        [xiaoYan entrustMediator:weihengMdr];
        [weihengMdr saveClintProfile:xiaoYan];
        
        //第三天小思想买房，到了伟恒地产找房源
        Buyer *xiaoSi = [[Buyer alloc] init];
        xiaoSi.money = 1500000;
        xiaoSi.name = @"小思";
        [xiaoSi entrustMediator:weihengMdr];
        //伟恒地产留下小思的信息
        [weihengMdr saveClintProfile:xiaoSi];
        
        //伟恒地产给小思匹配房源
        [xiaoSi buyHouse];
        
    }
    return 0;
}
