//
//  ViewController.m
//  testRunloop
//
//  Created by Jianfei Wang on 15/5/8.
//  Copyright (c) 2015年 Sina. All rights reserved.
//

#import "ViewController.h"
#import "MyOp.h"

@interface ViewController ()

@property (nonatomic, strong) NSOperationQueue *queue;

@end

@implementation ViewController

- (void)test
{
    NSLog(@"%@", [[NSRunLoop currentRunLoop] currentMode]);
    // v4.0
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
