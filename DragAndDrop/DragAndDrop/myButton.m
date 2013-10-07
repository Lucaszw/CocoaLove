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
    self = [super initWithFrame:frame];
    if (self) {
        _isBeingClicked = false;
    }
    
    return self;
}

- (void) updateTrackingAreas {
    [super updateTrackingAreas];
    
    NSTrackingAreaOptions options = NSTrackingInVisibleRect | NSTrackingMouseMoved | NSTrackingActiveInKeyWindow | NSTrackingMouseEnteredAndExited;
    trackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect options:options owner:self userInfo:nil];
    [self addTrackingArea:trackingArea];
}



-(void)mouseDown:(NSEvent *)theEvent {
    _isBeingClicked = true;
   
}
-(void)mouseUp:(NSEvent *)theEvent {
    _isBeingClicked = false;
}




@end
