//
//  ViewController.m
//  AOC2_Wk3
//
//  Created by Brandon Sease on 10/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end
@class AddEventViewController;

@implementation ViewController


- (void)viewDidLoad
{
    //Event List default
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//Event printer function
-(void)printEvents
{
    //TODO:Check for existing text
    //TODO:Append "New Event:" to text
    //TODO: Display text in UITextView
    
}


//New even button
-(IBAction)onClick:(id)sender
{
    //Init add event view
    AddEventViewController *addView = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    if (addView !=nil)
    {
        addView.delegate = self;
        //Show add event view
        [self presentModalViewController:addView animated:TRUE];
    }
}

-(void)didClose:(NSArray*)eventArray
{
    NSString *newString = [[eventArray valueForKey:@"description"] componentsJoinedByString:@""];
    textView.text = newString;
}

@end
