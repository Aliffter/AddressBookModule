//
//  AddressDetailViewController.m
//  AddressBookModule_Example
//
//  Created by 赵隆晓 on 2024/3/27.
//  Copyright © 2024 Aliffter. All rights reserved.
//

#import "AddressDetailViewController.h"

@interface AddressDetailViewController ()

@end

@implementation AddressDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.title =[NSString stringWithFormat:@"详情-%@",_person];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.completion){
        self.completion(@{@"name":_person});
    }
}


-(void)dealloc{
    NSLog(@"detail");
}

@end
