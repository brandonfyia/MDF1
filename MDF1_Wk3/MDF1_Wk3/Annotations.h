//
//  Annotations.h
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotations : NSObject <MKAnnotation>
{
    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
}

-(id)initWithTitle:(NSString*)text subtitle:(NSString*)subText coord:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
