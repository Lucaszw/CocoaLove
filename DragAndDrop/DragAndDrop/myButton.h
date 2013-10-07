//
//  myButton.h
//  DragAndDrop
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-28.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface myButton : NSButton {
NSTrackingArea *trackingArea;
}

@property BOOL isBeingClicked ;

@end
