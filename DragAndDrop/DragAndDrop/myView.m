//
//  myView.m
//  DragAndDrop
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "myView.h"

@implementation myView
@synthesize button;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        isMouseDown = false;
    }
    
    return self;
}

- (void) updateTrackingAreas {
    [super updateTrackingAreas];
    // Degine a tracking area, this has specific specifications, such as
    // where the mouse is positionsed, acis, etc...
    NSTrackingAreaOptions options = NSTrackingInVisibleRect | NSTrackingMouseMoved | NSTrackingActiveInKeyWindow | NSTrackingMouseEnteredAndExited;
    trackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect options:options owner:self userInfo:nil];
    // Add the tracking area to self, ie , this allows mouse detection in the
    // frame
    [self addTrackingArea:trackingArea];
}



-(void)mouseDragged:(NSEvent *)theEvent {
    // if the button is clicked
    if (button.isBeingClicked == TRUE){
        // get the location of the mouse..
        mousePositionInWindow = [theEvent locationInWindow];
        // break it into position, and also adjust according to the
        // position of the frame
        CGFloat xPosition = mousePositionInWindow.x - button.frame.size.width/2 ;
        CGFloat yPosition = mousePositionInWindow.y - button.frame.size.height/2 ;

        // change the frame of the mouses x and y positions to match
        // the new mouse position
        button.frame = CGRectMake(xPosition, yPosition, button.frame.size.width, button.frame.size.height);
       
        
    }
    
}


-(void)mouseDown:(NSEvent *)theEvent {
    isMouseDown = true;
}



@end
