//
//  AddressDetailViewController.h
//  AddressBookModule_Example
//
//  Created by 赵隆晓 on 2024/3/27.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressDetailViewController : UIViewController
@property (nonatomic, strong) NSString *person;
@property (nonatomic, copy) void(^completion)(NSDictionary *);

@end

NS_ASSUME_NONNULL_END
