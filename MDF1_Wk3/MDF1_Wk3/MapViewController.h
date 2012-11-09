//
//  MapViewController.h
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotations.h"

@interface MapViewController : UIViewController
{
    IBOutlet UILabel *title;
    IBOutlet UILabel *subtitle;
    IBOutlet MKMapView *mapView;
    NSString *subtitleText;
    NSString *titleText;
    Annotations *annotation;
    CLLocationCoordinate2D loc;

}
@property(nonatomic, retain) NSString *titleText;
@property(nonatomic, retain) NSString *subtitleText;
@property(nonatomic, retain) Annotations *annotation;
@property(nonatomic) CLLocationCoordinate2D loc;

@end
