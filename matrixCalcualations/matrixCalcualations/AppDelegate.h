//
//  AppDelegate.h
//  matrixCalcualations
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-27.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *a11;
@property (weak) IBOutlet NSTextField *a12;
@property (weak) IBOutlet NSTextField *a21;
@property (weak) IBOutlet NSTextField *a22;

@property (weak) IBOutlet NSTextField *b11;
@property (weak) IBOutlet NSTextField *b12;
@property (weak) IBOutlet NSTextField *b21;
@property (weak) IBOutlet NSTextField *b22;

@property (weak) IBOutlet NSTextField *c11;
@property (weak) IBOutlet NSTextField *c12;
@property (weak) IBOutlet NSTextField *c21;
@property (weak) IBOutlet NSTextField *c22;

@property (weak) IBOutlet NSButton *plusButton;
@property (weak) IBOutlet NSButton *minusButton;
@property (weak) IBOutlet NSButton *timesButton;
@property (weak) IBOutlet NSButton *divideButton;


@end
