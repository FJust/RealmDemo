//
//  NSArray+FTFHelper.m
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import "NSArray+FTFHelper.h"

@implementation NSArray (FTFHelper)

- (instancetype)mapIndex:(id (^)(id, NSInteger))map;
{
    NSMutableArray *transferArr = [[NSMutableArray alloc] init];
    if (self) {
        for (NSInteger i = 0; i < self.count; i ++) {
            id mr = map(self[i], i);
            if (mr) {
                [transferArr addObject:mr];
            }
        }
    }
    return transferArr;
}

- (instancetype)map:(id (^)(id))map
{
    return [self mapIndex:^id(id obj, NSInteger ind) {
        return map(obj);
    }];
}

@end
