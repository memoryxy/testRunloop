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
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.queue = [NSOperationQueue new];
    
    MyOp *op = [MyOp new];
    [self.queue addOperation:op];
    
    //[self performSelector:@selector(test) withObject:nil afterDelay:3.0];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(test) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(0, 20, 50, 50);
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 400) style:UITableViewStylePlain];
    [self.view addSubview:table];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
