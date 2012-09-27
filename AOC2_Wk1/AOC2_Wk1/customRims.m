//
//  customRims.m
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/26/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "customRims.h"

@implementation customRims

@synthesize spinners, hoursPerWheel;

//customizing init to set unique data members
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCostPerHour:250];
        [self setSpinners:NO];
        [self setHoursPerWheel:1];
    }
    return self;
};

//Overriding the base calculation to factor in unique data members
-(void)calculateCostPerJob
{
    if (spinners == YES)
    {
        [self setHoursPerJob:(self.hoursPerWheel * 2)];
    }
    else
    {
        [self setHoursPerJob:(self.hoursPerWheel)];  
    }
    [self setTotal:(self.hoursPerJob * self.costPerHour)];
    NSLog(@"This job will cost $%i in total.", self.total);
    
}

@end