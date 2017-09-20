//
//  RealmManager.m
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import "RealmManager.h"
#import "Dog.h"
#import "Person.h"
#import "RLMObject+FTFRealm.h"

@implementation RealmManager

+ (RLMRealm *)realm
{
    NSString *path = NSHomeDirectory();
    path = [[path stringByAppendingPathComponent:@"Realm"] stringByAppendingPathExtension:@"realm"];
    return [RLMRealm realmWithURL:[NSURL fileURLWithPath:path]];
}

- (void)fetchContractsWith:(NSArray<NSString *> *)ids complitation:(RLMCallBack)callBack
{    
    callBack([Person ftf_objectsForPrimaryKeys:ids]);
}

- (void)fetchExchangesWith:(NSArray <NSString *> *)ids complitation:(RLMCallBack)callBack
{
    callBack([Person ftf_objectsForPrimaryKeys:ids]);
}

- (void)fetchCategoriesWith:(NSArray <NSString *> *)ids complitation:(RLMCallBack)callBack
{
    callBack([Person ftf_objectsForPrimaryKeys:ids]);
}

+ (void)clearCache
{
    [[RealmManager realm] transactionWithBlock:^{
        [[RealmManager realm] deleteAllObjects];
    }];
}

@end


