//
//  AppDelegate.m
//  matrixCalcualations
//
//  Created by Lucas Zeer-Wanklyn on 2013-05-27.
//  Copyright (c) 2013 Lucas Zeer-Wanklyn. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize a11,a12,a21,a22,b11,b12,b21,b22,c11,c12,c21,c22,plusButton,minusButton,timesButton,divideButton;

struct array {
    double m[2][2];
};



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  
    
}

- (IBAction)multiply:(id)sender {
    // Create a 2D array for a 4 x4 matrix 
    double m1[2][2]= {{[a11.stringValue doubleValue],[a12.stringValue doubleValue] },{[a21.stringValue doubleValue],[a22.stringValue doubleValue] }};
    double m2[2][2]= {{[b11.stringValue doubleValue],[b12.stringValue doubleValue] },{[b21.stringValue doubleValue],[b22.stringValue doubleValue] }};
    
    // As you can't pass 2D arrays directly, add into a struct :
    struct array m = mFunc(m1, m2);
    
    // Define the product of the multiplication of the two matrices
    
    double m3[2][2] = {{m.m[0][0],m.m[0][1] },{m.m[1][0],m.m[1][1] }};
    
    // get values for the matrix, and put inside the view
    c11.stringValue = [NSString stringWithFormat:@"%f", m3[0][0]];
    c12.stringValue = [NSString stringWithFormat:@"%f", m3[0][1]];
    c21.stringValue = [NSString stringWithFormat:@"%f", m3[1][0]];
    c22.stringValue = [NSString stringWithFormat:@"%f", m3[1][1]];
}
- (IBAction)divide:(id)sender {
    
    // get the string values of each text field , and fill the 2 x 2 matrices
    double m1[2][2]= {{[a11.stringValue doubleValue],[a12.stringValue doubleValue] },{[a21.stringValue doubleValue],[a22.stringValue doubleValue] }};
    double m2[2][2]= {{[b11.stringValue doubleValue],[b12.stringValue doubleValue] },{[b21.stringValue doubleValue],[b22.stringValue doubleValue] }};
    // get a struct of the inverse product of the two matrices
    struct array m = dFunc(m1, m2);
    
    //fill the resultant matrix with the values from the struct
    double m3[2][2] = {{m.m[0][0],m.m[0][1] },{m.m[1][0],m.m[1][1] }};
    c11.stringValue = [NSString stringWithFormat:@"%f", m3[0][0]];
    c12.stringValue = [NSString stringWithFormat:@"%f", m3[0][1]];
    c21.stringValue = [NSString stringWithFormat:@"%f", m3[1][0]];
    c22.stringValue = [NSString stringWithFormat:@"%f", m3[1][1]];
}


struct array mFunc(double m1[2][2],double m2[2][2]) {
    // define a struct for the product of the two matrices
    struct array a;
    // calculate the product via the following formulas
    a.m[0][0] = m1[0][0]*m1[0][0] + m1[0][1]*m1[1][0];
    a.m[0][1] = m1[0][0]*m1[0][1] + m1[0][1]*m1[1][1];
    a.m[1][0] = m1[1][0]*m1[0][0] + m1[1][1]*m1[1][0];
    a.m[1][1] = m1[1][0]*m1[0][1] + m1[1][1]*m1[1][1];
    
    // return the struct containing the product of the two matrices
    return a;
}

struct array dFunc(double m1[2][2], double m2[2][2]){
    // define a struct for the inverse product of the two matrices
    struct array dm ;
    // alternative way of representing the matrix as simple variables
    // although the outcome is the same as mFunc
    double a = m1[0][0];double b=m1[0][1];double c=m1[1][0];double d=m1[1][1];
    double e = m2[0][0];double f=m2[0][1];double g=m2[1][0];double h=m2[1][1];
    
    // calculations    
    dm.m[0][0] = (h*a - f*c)/(e*h - f*g);
    dm.m[0][1] = (h*b - f*d)/(e*h - f*g);
    dm.m[0][0] = (-1*a*g + e*c)/(e*h - f*g);
    dm.m[0][0] = (-1*b*g + e*d)/(e*h - f*g);
    
    // return the matrix
    return dm;
}



@end
