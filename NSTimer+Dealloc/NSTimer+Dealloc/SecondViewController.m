//
//  SecondViewController.m
//  NSTimer+Dealloc
//
//  Created by LeeWong on 2017/3/17.
//  Copyright © 2017年 LeeWong. All rights reserved.
//

#import "SecondViewController.h"
#import "NSTimer+Dealloc.h"
@interface SecondViewController ()
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//        self.timer = [NSTimer scheduledTimerWithTimeInterval:2. target:self selector:@selector(log) userInfo:nil repeats:YES];
    
    __weak SecondViewController *weakSelf = self;
    self.timer = [NSTimer art_scheduledTimerWithTimeInterval:2. block:^{
        [weakSelf log];
    } repeats:YES];
}



- (void)log
{
    NSLog(@"2222---");
}

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
