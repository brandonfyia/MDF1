//
//  ViewController.m
//  AOC1wk4
//
//  Created by Brandon Sease on 8/23/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Username Lable
    userLab = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 90.0f, 20.0f)];
    if (userLab != nil)
    {
        userLab.text = @"Username: ";
        userLab.textAlignment = UITextAlignmentRight;
        [self.view addSubview:userLab];
    }
    
    //Username Textfield
    UITextField *userText = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 210.0f, 30.0f)];
    if (userText != nil)
    {
        userText.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userText];
    }
    
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

@end
