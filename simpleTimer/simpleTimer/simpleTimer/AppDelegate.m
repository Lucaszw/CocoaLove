//
//  AppDelegate.m
//  simpleTimer
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize timeLabel, myButton;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    myTime = 0;
    
    status = true;
    
}
- (IBAction)startOrEndTimer:(id)sender {
    if (status == true){
       
        theTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(eventHappened) userInfo:nil repeats:YES];
        status = false;
        myButton.title = @"running";
        
    }else {
        [theTimer invalidate];
        myTime = 0;
        status = true;
        myButton.title = @"stopped";
    }
}
-(void)eventHappened {
    myTime ++;
    timeLabel.stringValue = [NSString stringWithFormat:@"%i",myTime];
                    }

@end
