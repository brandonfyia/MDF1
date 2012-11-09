//
//  Annotations.m
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "Annotations.h"

@implementation Annotations
@synthesize title, subtitle, coordinate;

-(id)initWithTitle:(NSString*)text subtitle:(NSString*)subText coord:(CLLocationCoordinate2D)coord
{
    if (self == [super init])
    {
        title = text;
        subtitle = subText;
        coordinate = coord;
    }
    return self;
}

@end
