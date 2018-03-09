
#import "XshViewController.h"
#import "MD_GCDTimerManager.h"
#import "NSTimer+XshBlocksSupport.h"

@interface XshViewController ()

@end

@implementation XshViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [NSTimer xsh_scheduledTimerWithTimeInterval:3 block:^{
        NSLog(@"1");
    } repeats:YES];
    
    [[MD_GCDTimerManager sharedInstance] scheduledDispatchTimerWithName:@"xshTimer" timeInterval:3 queue:nil repeats:YES actionOption:(AbandonPreviousAction) action:^{
        NSLog(@"2");
    }];
}



@end
