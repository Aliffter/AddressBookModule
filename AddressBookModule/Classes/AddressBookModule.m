//
//  AddressBookModule.m
//  AddressBookModule_Example
//
//  Created by 赵隆晓 on 2024/3/27.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "AddressBookModule.h"
#import "AddressBookViewController.h"
#import "AddressDetailViewController.h"

#import <MGJRouter/MGJRouter.h>

@implementation AddressBookModule
// 在load方法中自动注册，在主工程中不用写任何代码。
+ (void)load {
    [MGJRouter registerURLPattern:@"ABM://AddressBook/MainVC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];

        AddressBookViewController *mainVC = [[AddressBookViewController alloc] init];
        mainVC.completion = routerParameters[MGJRouterParameterCompletion];

        [navigationVC pushViewController:mainVC animated:YES];
    }];
    
    [MGJRouter registerURLPattern:@"ABM://AddressBook/DetailVC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        NSString *person = routerParameters[MGJRouterParameterUserInfo][@"personKey"];

        AddressDetailViewController *detailVC = [[AddressDetailViewController alloc] init];
        detailVC.person = person;
        detailVC.completion = routerParameters[MGJRouterParameterCompletion];
        [navigationVC pushViewController:detailVC animated:YES];
    }];

   
}
@end
