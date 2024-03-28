//
//  LXViewController.m
//  AddressBookModule
//
//  Created by Aliffter on 03/27/2024.
//  Copyright (c) 2024 Aliffter. All rights reserved.
//

#import "LXViewController.h"
#import <MGJRouter/MGJRouter.h>
@interface LXViewController ()

@end

@implementation LXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
}
- (IBAction)showMain:(UIButton *)sender {
    [MGJRouter openURL:@"ABM://AddressBook/MainVC"
          withUserInfo:@{@"navigationVC" : self.navigationController}
            completion:^(id result){
        NSLog(@"===== %@",result);

    }];

}
- (IBAction)showDetail:(UIButton *)sender {
    [MGJRouter openURL:@"ABM://AddressBook/DetailVC/9999?author=leo"
          withUserInfo:@{@"navigationVC" : self.navigationController,
                         @"personKey" : @"Uzi"
                       }
            completion:^(id result) {
        NSLog(@"===== %@",result);
    }];

}


@end
