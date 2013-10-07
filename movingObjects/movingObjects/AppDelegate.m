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
    CGPoint myPoint = movingButton.frame.origin;
    // CGFloat is either double or float
    double x = myPoint.x;
    double y = myPoint.y;
    
    NSLog(@"%f", x);
    NSLog(@"%f", y);
}
//Move object when button is pressed objective c
- (IBAction)moveLeft:(id)sender {
    
    movingButton.frame = CGRectMake(movingButton.frame.origin.x -10, movingButton.frame.origin.y, movingButton.frame.size.width, movingButton.frame.size.height);
 
}
- (IBAction)moveRight:(id)sender {
    movingButton.frame = CGRectMake(movingButton.frame.origin.x + 10, movingButton.frame.origin.y, movingButton.frame.size.width, movingButton.frame.size.height);
}

@end
