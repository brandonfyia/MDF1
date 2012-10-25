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
-(NSMutableArray*)getList
{
    list = [[NSMutableArray alloc] initWithObjects:@"Car", @"Bicycle", @"Cat", @"Dog", @"Jewelery", @"BB Gun", @"Video Game", @"Golf Clubs", @"Nintendo", @"Space Ship", @"Remote Controlled Car", @"Monopoly", @"Hungry Hungry Hippos", @"Skate Board", @"iPad", @"Mobile Development Degree", @"New House", @"Android Phone", @"Shark With Lazer Attached", @"More Loot", nil];
    return list;
}

//This is so I can quickly replace my list after testing the delete function
//
//    list = [[NSArray alloc] initWithObjects:@"Car", @"Bicycle", @"Cat", @"Dog", @"Jewelery", @"BB Gun", @"Video Game", @"Golf Clubs", @"Nintendo", @"Space Ship", @"Remote Controlled Car", @"Monopoly", @"Hungry Hungry Hippos", @"Skate Board", @"iPad", @"Mobile Development Degree", @"New House", @"Android Phone", @"Shark With Lazer Attached", @"More Loot", nil];
//

@end
