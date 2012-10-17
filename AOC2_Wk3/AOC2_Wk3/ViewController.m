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


@implementation ViewController


- (void)viewDidLoad
{
    //Swipe gesture setup
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLable addGestureRecognizer:rightSwiper];
    
    //Event List default
    eventString = [[NSMutableString alloc] init];    
    
    
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
-(void)printEvents:(NSMutableString*)eventList
{
    // Display text in UITextView
    [eventString appendString:eventList];
    textView.text = eventString;
    
}


//New even button
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        //Init add event view
        AddEventViewController *addView = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
        if (addView !=nil)
        {
            addView.delegate = self;
            //Show add event view
            addView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
            [self presentViewController:addView animated:TRUE completion:nil ];
        }
    }

}

-(void)didClose:(NSMutableString*)eventList
{
    [self printEvents:eventList];
}

@end
