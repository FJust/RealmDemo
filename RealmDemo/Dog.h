//
//  Dog.h
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import <Foundation/Foundation.h>

RLM_ARRAY_TYPE(Dog)

@interface Dog : RLMObject

@property (nonatomic, copy) NSString *name;

@end

