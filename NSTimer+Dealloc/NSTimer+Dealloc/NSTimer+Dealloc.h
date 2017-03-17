//
//  NSTimer+Dealloc.h
//  NSTimer+Dealloc
//
//  Created by LeeWong on 2017/3/17.
//  Copyright © 2017年 LeeWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Dealloc)

+ (NSTimer *)art_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats;

@end
