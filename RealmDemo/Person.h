//
//  Person.h
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import <Realm/Realm.h>
#import "Dog.h"

@interface Person : RLMObject

@property (nonatomic, strong) RLMArray<Dog *><Dog> *dogs;

@property (nonatomic, copy) NSString *name;

@end
