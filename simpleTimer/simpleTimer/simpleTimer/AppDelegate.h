//
//  AppDelegate.h
//  simpleTimer
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    int myTime;
    BOOL status;
    NSTimer *theTimer;
    
}
@property (weak) IBOutlet NSTextField *timeLabel;
@property (weak) IBOutlet NSButton *myButton;

@property (assign) IBOutlet NSWindow *window;

@end
