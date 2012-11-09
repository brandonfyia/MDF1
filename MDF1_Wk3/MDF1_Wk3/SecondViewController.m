//
//  SecondViewController.m
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "SecondViewController.h"
#import "DataSource.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //create default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 55.0f;
    span.longitudeDelta = 55.0f;
    
    CLLocationCoordinate2D location;
    location.latitude = 37.090f;
    location.longitude = -95.712f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    //load annotations
    DataSource *data = [[DataSource alloc] init];
    list = [data getData];
    
    //Show annotations
    [mapView addAnnotations:list];
    NSLog(@"%@", list);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
