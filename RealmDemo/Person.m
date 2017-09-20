//
//  Person.m
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import "Person.h"
#import "RealmManager.h"

@implementation Person

+ (NSString *)primaryKey
{
    return @"name";
}
//
//+ (instancetype)objectForPrimaryKey:(id)primaryKey
//{
//    return RLMGetObject([RealmManager realm], self.className, primaryKey);
//}

@end
