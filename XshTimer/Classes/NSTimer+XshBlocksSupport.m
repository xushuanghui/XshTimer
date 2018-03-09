//
//  NSTimer+XshBlocksSupport.m
//  Pods-XshTimer_Example
//
//  Created by shuanghui xu on 2018/3/9.
//

#import "NSTimer+XshBlocksSupport.h"
#import <objc/runtime.h>

@implementation NSTimer (XshBlocksSupport)

+ (NSTimer *)xsh_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                         block:(xshBlock)block
                                       repeats:(BOOL)repeats
{
    return [self scheduledTimerWithTimeInterval:interval
                                         target:self
                                       selector:@selector(xsh_blockInvoke:)
                                       userInfo:[block copy]
                                        repeats:repeats];
}
+ (void)xsh_blockInvoke:(NSTimer *)timer {
    xshBlock block = timer.userInfo;
    if(block) {
        block();
    }
}



@end
