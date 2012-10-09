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
}


-(IBAction)onClose:(id)sender;
-(IBAction)onChange:(id)sender;

@end
