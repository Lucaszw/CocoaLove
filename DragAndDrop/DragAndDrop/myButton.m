//
//  myButton.m
//  DragAndDrop
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "myButton.h"

@implementation myButton
- (id)initWithFrame:(NSRect)frame
{
    //  define self , and set _isBeingClicked to initally false
    self = [super initWithFrame:frame];
    if (self) {
        _isBeingClicked = false;
    }
    
    return self;
}

- (void) updateTrackingAreas {
    // when updateTrackingAreas is called : adkust to match feedback from mouse, and add the new tracking area
    [super updateTrackingAreas];
    
    NSTrackingAreaOptions options = NSTrackingInVisibleRect | NSTrackingMouseMoved | NSTrackingActiveInKeyWindow | NSTrackingMouseEnteredAndExited;
    trackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect options:options owner:self userInfo:nil];
    [self addTrackingArea:trackingArea];
}



-(void)mouseDown:(NSEvent *)theEvent {
    // if mouse if down , set _isBeingClicked to true, so that is position is editable
    _isBeingClicked = true;
   
}
-(void)mouseUp:(NSEvent *)theEvent {
    // set being clicked to false...
    _isBeingClicked = false;
}




@end
