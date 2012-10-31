//
//  Data.m
//  MDF1_Wk2
//
//  Created by Brandon Sease on 10/30/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "Data.h"

@implementation Data

-(NSArray*)getArray
{
    NSArray *item1 = [[NSArray alloc]initWithObjects:@"Item 1",@"Item 1 Description", nil];
    NSArray *item2 = [[NSArray alloc]initWithObjects:@"Item 2",@"Item 2 Description", nil];
    NSArray *item3 = [[NSArray alloc]initWithObjects:@"Item 3",@"Item 3 Description", nil];
    NSArray *item4 = [[NSArray alloc]initWithObjects:@"Item 4",@"Item 4 Description", nil];
    NSArray *item5 = [[NSArray alloc]initWithObjects:@"Item 5",@"Item 5 Description", nil];
    NSArray *item6 = [[NSArray alloc]initWithObjects:@"Item 6",@"Item 6 Description", nil];
    NSArray *item7 = [[NSArray alloc]initWithObjects:@"Item 7",@"Item 7 Description", nil];
    NSArray *item8 = [[NSArray alloc]initWithObjects:@"Item 8",@"Item 8 Description", nil];
    NSArray *item9 = [[NSArray alloc]initWithObjects:@"Item 9",@"Item 9 Description", nil];
    NSArray *list = [[NSArray alloc]initWithObjects:item1, item2, item3, item4, item5, item6, item7, item8, item9, nil];
    return list;
}

@end
