//
//  FirstViewController.h
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapViewController.h"

@interface FirstViewController : UIViewController
{
    NSMutableArray *list;
    IBOutlet UITableView *tableView;
}

-(IBAction)onEdit:(id)sender;
@end
