//
//  AppDelegate.h
//  arraySearch
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-24.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *box1;
@property (weak) IBOutlet NSTextField *box2;
@property (weak) IBOutlet NSTextField *box3;
@property (weak) IBOutlet NSTextField *box4;
@property (weak) IBOutlet NSTextField *box5;
@property (weak) IBOutlet NSSearchField *searchBox;
@property (weak) IBOutlet NSButton *searchButton;
@property (weak) IBOutlet NSTextField *resultBox;

@end
