//
//  NSTimer+XshBlocksSupport.h
//  Pods-XshTimer_Example
//
//  Created by shuanghui xu on 2018/3/9.
//

#import <Foundation/Foundation.h>

typedef void (^xshBlock)(void);

@interface NSTimer (XshBlocksSupport)
+ (NSTimer *)xsh_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                         block:(xshBlock)block
                                       repeats:(BOOL)repeats;


@end
