//
//  AddEventViewController.m
//  AOC2_Wk3
//
//  Created by Brandon Sease on 10/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

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

    //Set Date Picker defaults
    [datePicker setTimeZone:[NSTimeZone localTimeZone]];
    NSDate *todaysDate = [NSDate date];
    NSLog(@"%@", todaysDate);
    //Neither of these apear to be working keep getting null. Everything i can find says they are right.  
    //datePicker.minimumDate = todaysDate;
    datePicker.minimumDate = [NSDate date];
    NSLog(@"%@", datePicker.minimumDate);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
//Date Picker
-(IBAction)onChange:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)sender;
    if (picker != nil)
    {
        NSDate *chosenDate = picker.date;
        NSLog(@"You chose: %@", chosenDate);
    }
}
//Save button
-(IBAction)onClose:(id)sender
{
    //TODO: Save event text
    //TODO: Save date/time
    //Close Add event view
    [self dismissModalViewControllerAnimated:TRUE];
    //TODO: Rerun event printer function
}
@end
