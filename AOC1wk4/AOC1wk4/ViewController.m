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
//Info Box function

- (NSString*)makeInfoText:(NSString*)firstS secondString:(NSString*)secondS
{
    NSMutableString *muteS = [[NSMutableString alloc]initWithString:firstS];
    [muteS appendString:secondS];
    return muteS;
}


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
    userText = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 210.0f, 30.0f)];
    if (userText != nil)
    {
        userText.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userText];
    }
    
    //Username Button
    userButt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (userButt != nil)
    {
        userButt.frame = CGRectMake(230.0f, 50.0f, 80.0f, 30.0f);
        [userButt setTitle:@"Login" forState:UIControlStateNormal];
        [userButt addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:userButt];
    }
    
    //Info box text
    infoText =@"Please Enter Username";
    
    //Info box
    infoLab = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
    if (infoLab != nil)
    {
        infoLab.text = infoText;
        infoLab.textColor =[UIColor blueColor];
        infoLab.backgroundColor = [UIColor lightGrayColor];
        infoLab.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:infoLab];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//onClick Function
- (void)onCLick
{
    fieldText = [userText text];
    //Username check
    if (fieldText.length < 1)
    {
        infoText = @"Username cannot be empty.";
    } else {
        infoText = @"User: has been logged in.";
    }
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
