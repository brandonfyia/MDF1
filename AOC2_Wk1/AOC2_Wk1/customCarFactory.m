//
//  customCarFactory.m
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/26/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "customCarFactory.h"

@implementation customCarFactory

+(baseCustomCar *)createNewCustomCar:(int)customType
{
    return [[customTint alloc] init];
}
@end
