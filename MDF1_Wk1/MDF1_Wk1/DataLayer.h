//
//  DataLayer.h
//  MDF1_Wk1
//
//  Created by Brandon Sease on 10/24/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataLayer : NSObject
{
    NSMutableArray *list;
}

-(NSMutableArray*)getList;

@end
