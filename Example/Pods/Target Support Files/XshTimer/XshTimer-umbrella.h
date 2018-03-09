#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MD_GCDTimerManager.h"
#import "NSTimer+XshBlocksSupport.h"

FOUNDATION_EXPORT double XshTimerVersionNumber;
FOUNDATION_EXPORT const unsigned char XshTimerVersionString[];

