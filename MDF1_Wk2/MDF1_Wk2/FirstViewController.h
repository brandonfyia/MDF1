//
//  FirstViewController.h
//  MDF1_Wk2
//
//  Created by Brandon Sease on 10/30/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView *tableView;
    NSArray *list;

    UITextField *rowId;
}

@end
