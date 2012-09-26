//
//  TextClass.h
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/25/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextClass : NSObject
{
    NSString *text;
    
    int intValue;
    
    float floatValue;
}

-(NSString*)getText;

@end
