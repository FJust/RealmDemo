//
//  RealmManager.h
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

typedef void(^RLMCallBack)(RLMResults *reslut);

@interface RealmManager : RLMRealm

- (void)fetchContractsWith:(NSArray <NSString *> *)ids complitation:(RLMCallBack)callBack;

- (void)fetchExchangesWith:(NSArray <NSString *> *)ids complitation:(RLMCallBack)callBack;

- (void)fetchCategoriesWith:(NSArray <NSString *> *)ids complitation:(RLMCallBack)callBack;


+ (RLMRealm *)realm;

+ (void)clearCache;

@end
