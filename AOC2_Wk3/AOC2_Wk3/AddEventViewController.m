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
    [datePicker setMinimumDate:[NSDate date]];
    
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
        chosenDate = picker.date;
    }
}
//Save button
-(IBAction)onClose:(id)sender
{
    //Save event text
    
    //Default Values
    NSMutableString *startOfText = [[NSMutableString alloc] initWithString:@"New Event: "];
    eventList = [[NSMutableArray alloc] init];
    NSString *textToAdd = textField.text;
    
    //Format Date
    NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
    [formattedDate setFormatterBehavior:NSDateFormatterBehavior10_4];
    [formattedDate setDateFormat:@" dd MMM, yyyy 'at' hh:mm a z"];
    dateString = [formattedDate stringFromDate:chosenDate];
    
    //combine default opening with inputed text and date
    [startOfText appendString:textToAdd];
    [startOfText appendString:dateString];

    //Add combined text to array for later print out
    [eventList addObject:startOfText];
    
    //Close Add event view
    [self dismissModalViewControllerAnimated:TRUE];
    
    //TODO: Rerun event printer function
}

//Close Keyboard
-(IBAction)onClick:(id)sender
{
    [textField resignFirstResponder];
}
@end