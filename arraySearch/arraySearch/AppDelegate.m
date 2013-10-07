//
//  AppDelegate.m
//  arraySearch
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-24.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize box1,box2,box3,box4,box5,searchBox,searchButton,resultBox;


- (IBAction)searchArray:(id)sender {
//    int myArray2[5];
    
     NSString * const myArray[] = { box1.stringValue, box2.stringValue, box3.stringValue, box4.stringValue, box5.stringValue };
    
    NSString * const x = searchBox.stringValue ;

    for (int i =0; i<5; i++) {
        if (x == myArray[i]){
            NSLog(@"%s", "found in textbox # :");
            NSLog(@"%d", i+1);
            break; 
        }
        
    }
    
    
    
//    myArray2[1] = 2;
//    
//    NSLog(@"%d", myArray2[1]);
    
}






- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}



@end
