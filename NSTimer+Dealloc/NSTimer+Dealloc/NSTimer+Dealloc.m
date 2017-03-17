//
//  NSTimer+Dealloc.m
//  NSTimer+Dealloc
//
//  Created by LeeWong on 2017/3/17.
//  Copyright © 2017年 LeeWong. All rights reserved.
//

#import "NSTimer+Dealloc.h"

@implementation NSTimer (Dealloc)

+ (NSTimer *)art_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats
{
    return [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(art_blockInvoke:) userInfo:[block copy] repeats:repeats];
}


+ (void)art_blockInvoke:(NSTimer *)timer
{
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

@end
