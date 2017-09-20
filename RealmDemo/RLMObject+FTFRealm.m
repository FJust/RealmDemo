//
//  RLMObject+FTFRealm.m
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import "RLMObject+FTFRealm.h"
#import "NSArray+FTFHelper.h"

@implementation RLMObject (FTFRealm)

+ (instancetype)ftf_objectForPrimaryKey:(NSString *)primaryKey;
{
    return [self objectInRealm:[RealmManager realm] forPrimaryKey:primaryKey];
}

+ (RLMResults *)ftf_objectsForPrimaryKeys:(NSArray <NSString *> *)primaryKeys
{
    return (RLMResults *)[primaryKeys map:^id(NSString *key) {
        return [self ftf_objectForPrimaryKey:key];
    }];
}

@end
