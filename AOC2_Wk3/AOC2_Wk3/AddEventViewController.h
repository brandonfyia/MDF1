//
//  AddEventViewController.h
//  AOC2_Wk3
//
//  Created by Brandon Sease on 10/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController

{
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UITextField *textField;
    NSMutableArray *eventList;
    NSDate *chosenDate;
    NSString *dateString;
}


-(IBAction)onClose:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)onClick:(id)sender;

@end