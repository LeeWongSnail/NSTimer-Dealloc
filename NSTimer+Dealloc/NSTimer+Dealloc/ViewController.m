//
//  ViewController.m
//  NSTimer+Dealloc
//
//  Created by LeeWong on 2017/3/17.
//  Copyright © 2017年 LeeWong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2. target:self selector:@selector(log) userInfo:nil repeats:YES];
    
}


- (void)log
{
    NSLog(@"11111---");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
