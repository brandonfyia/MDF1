//
//  DataLayer.m
//  MDF1_Wk1
//
//  Created by Brandon Sease on 10/24/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "DataLayer.h"

@implementation DataLayer

//JStores my currently static data
-(NSArray*)getList
{
    list = [[NSArray alloc] initWithObjects:@"Car", @"Bicycle", @"Cat", @"Dog", @"Jewelery", @"BB Gun", @"Video Game", @"Golf Clubs", @"Nintendo", @"Space Ship", @"Remote Controlled Car", @"Monopoly", @"Hungry Hungry Hippos", @"Skate Board", @"iPad", @"Mobile Development Degree", @"New House", @"Android Phone", @"Shark With Lazer Attached", @"More Loot", nil];
    return list;
}

@end
