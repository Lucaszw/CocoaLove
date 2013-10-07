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
    
    NSTrackingAreaOptions options = NSTrackingInVisibleRect | NSTrackingMouseMoved | NSTrackingActiveInKeyWindow | NSTrackingMouseEnteredAndExited;
    trackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect options:options owner:self userInfo:nil];
    [self addTrackingArea:trackingArea];
}



-(void)mouseDragged:(NSEvent *)theEvent {
    
    if (button.isBeingClicked == TRUE){
        
        mousePositionInWindow = [theEvent locationInWindow];

        CGFloat xPosition = mousePositionInWindow.x - button.frame.size.width/2 ;
        CGFloat yPosition = mousePositionInWindow.y - button.frame.size.height/2 ;

        button.frame = CGRectMake(xPosition, yPosition, button.frame.size.width, button.frame.size.height);
       
        
    }
    
}


-(void)mouseDown:(NSEvent *)theEvent {
    isMouseDown = true;
}



@end
