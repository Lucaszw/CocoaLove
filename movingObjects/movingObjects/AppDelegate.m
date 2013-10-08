//
//  AppDelegate.m
//  movingObjects
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-27.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize movingButton,leftButton,rightButton;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

    
}
- (IBAction)findCoordinates:(id)sender {
    // crate a point that descirives the origin of the button
    CGPoint myPoint = movingButton.frame.origin;
    // CGFloat is either double or float
    // get the x and y of the buttons frame
    double x = myPoint.x;
    double y = myPoint.y;
    
    // print the coordinates to console
    NSLog(@"%f", x);
    NSLog(@"%f", y);
}
//Move object when button is pressed objective c
- (IBAction)moveLeft:(id)sender {
    // if told to move left, remake the CG rect of the buttons frame to
    // be 10 values to the left
    movingButton.frame = CGRectMake(movingButton.frame.origin.x -10, movingButton.frame.origin.y, movingButton.frame.size.width, movingButton.frame.size.height);
 
}
- (IBAction)moveRight:(id)sender {
    // if told to move right, remake the CG rect of the buttons frame to
    // be 10 values to the right
    movingButton.frame = CGRectMake(movingButton.frame.origin.x + 10, movingButton.frame.origin.y, movingButton.frame.size.width, movingButton.frame.size.height);
}

@end
