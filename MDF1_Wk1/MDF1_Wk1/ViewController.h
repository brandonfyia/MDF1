//
//  ViewController.h
//  MDF1_Wk1
//
//  Created by Brandon Sease on 10/24/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataLayer;

@interface ViewController : UIViewController
{
    NSArray *list;
    DataLayer *dataLayer;
    
    IBOutlet UITableView *tableView;
}

@end
