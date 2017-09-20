//
//  RLMObject+FTFRealm.h
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import <Realm/Realm.h>
#import "RealmManager.h"

@interface RLMObject (FTFRealm)

+ (instancetype)ftf_objectForPrimaryKey:(NSString *)primaryKey;

+ (RLMResults *)ftf_objectsForPrimaryKeys:(NSArray <NSString *> *)primaryKeys;

@end
