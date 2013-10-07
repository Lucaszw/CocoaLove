//
//  myView.h
//  DragAndDrop
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "myButton.h"

@interface myView : NSView {
    
    NSTrackingArea *trackingArea;
    BOOL isMouseDown;
    NSPoint mousePositionInWindow;
}

@property (assign) IBOutlet myButton *button;

@end
