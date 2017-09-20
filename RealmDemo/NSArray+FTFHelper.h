//
//  NSArray+FTFHelper.h
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSArray (FTFHelper)

- (instancetype)mapIndex:(id (^)(id, NSInteger))map;

- (instancetype)map:(id (^)(id))map;


@end
