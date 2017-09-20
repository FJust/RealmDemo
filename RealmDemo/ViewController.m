//
//  ViewController.m
//  RealmDemo
//
//  Created by Just on 2017/9/19.
//  Copyright © 2017年 Just. All rights reserved.
//

#import "ViewController.h"
#import "RealmManager.h"
#import "Person.h"
#import "RLMObject+FTFRealm.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray <NSString *> *array = @[@"a", @"b", @"c", @"d"];
    
    NSArray <NSString *>* dogsName = @[@"1", @"2", @"3", @"4"];

//    for (int i = 0; i < array.count; i++) {
        Person *p = [[Person alloc] init];
        p.name = @"hello";
        for (NSString *dog in dogsName) {
            Dog *d = [[Dog alloc] init];
            d.name = dog;
            [p.dogs addObject:d];
        }
        [[RealmManager realm] transactionWithBlock:^{
            [[RealmManager realm] addOrUpdateObject:p];
        }];
//    }
    
    Person *p1 = [Person objectInRealm:[RealmManager realm] forPrimaryKey:@"hello"];
    for (int i = 0; i < p1.dogs.count; i++) {
        NSLog(@"%@", p1.dogs[i].name);
    }
    
    RLMResults *res = [Dog ftf_objectsForPrimaryKeys:dogsName];
    
    for (Dog *d in res) {
        NSLog(@"%@", d.name);
    }
    
    [RealmManager clearCache];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
