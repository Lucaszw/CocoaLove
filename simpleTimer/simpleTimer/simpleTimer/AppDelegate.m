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
       // if the timer is set to run, create a timer event that triggeres
        // the event "eventHappened" 
        theTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(eventHappened) userInfo:nil repeats:YES];
        // set status to false , this makes it so next time the button is pressed
        // it will stop running
        status = false;
        // set the button title to running
        myButton.title = @"running";
        
    }else {
        // stop the timer if told to 
        [theTimer invalidate];
        // recent time
        myTime = 0;
        // set status to true ( so next time button pressed it restarts timer)s
        status = true;
        // set the button text to stopped
        myButton.title = @"stopped";
    }
}
-(void)eventHappened {
    // called everytime the timer triggeres the event
    // add 1 to time, and adjust the timer label to match...
    myTime ++;
    timeLabel.stringValue = [NSString stringWithFormat:@"%i",myTime];
}

@end
