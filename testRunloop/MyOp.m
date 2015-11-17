//
//  MyOp.m
//  testRunloop
//
//  Created by Jianfei Wang on 15/5/8.
//  Copyright (c) 2015年 Sina. All rights reserved.
//

#import "MyOp.h"

@interface MyOp ()

@property (nonatomic, strong) NSRunLoop *loop;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation MyOp

- (void)timerFired
{
    NSLog(@"fired, %p, %p", [NSRunLoop currentRunLoop], [NSRunLoop mainRunLoop]);
    
    
}

- (void)main
{
    self.loop = [NSRunLoop currentRunLoop];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timerFired) userInfo:nil repeats:NO];
    [self.loop addTimer:self.timer forMode:NSDefaultRunLoopMode];
    
//    NSPort *port = [NSPort port];
//    [self.loop addPort:port forMode:NSDefaultRunLoopMode];
    
    BOOL b;
    do {
        b = [self.loop runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:5]];
        NSLog(@"after run");
    } while (b);
}

@end
