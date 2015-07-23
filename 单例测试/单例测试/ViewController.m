//
//  ViewController.m
//  单例测试
//
//  Created by lanou3g on 15-7-23.
//  Copyright (c) 2015年 hehehe. All rights reserved.
//

#import "ViewController.h"
#import "BlockTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BlockTest *blockT = [[BlockTest alloc] init];
    blockT.block = ^(NSInteger a) {
        NSLog(@"%ld",(long)a);
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
