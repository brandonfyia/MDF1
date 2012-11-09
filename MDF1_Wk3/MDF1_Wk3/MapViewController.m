//
//  MapViewController.m
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize titleText, subtitleText, annotation, loc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //create default span and zoom level
    MKCoordinateSpan span;
    span.latitudeDelta = 20.0f;
    span.longitudeDelta = 20.0f;
    
    MKCoordinateRegion region;
    region.center = loc;
    region.span = span;
    mapView.region = region;
    
    //Fill in labels
    title.text = titleText;
    subtitle.text = subtitleText;
    
    //Show on map
    [mapView addAnnotation:annotation];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
