//
//  TextClass.m
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/25/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "TextClass.h"

@implementation TextClass

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //any init for this object
        intValue = 4;
        floatValue = 10.3f;
        
    }
    
    return self;
}

-(NSString*)getText
{
    text = [NSString stringWithFormat:@"int = %d, float = %f", intValue, floatValue];
    if (text != nil)
    {
        return text;
    }
    return nil;
}




@end
