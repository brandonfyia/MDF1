//
//  SecondViewController.h
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DataSource.h"
#import "Annotations.h"

@interface SecondViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
    NSMutableArray *list;
}
@end
