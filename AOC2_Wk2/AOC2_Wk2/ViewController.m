//
//  ViewController.m
//  AOC2_Wk2
//
//  Created by Brandon Sease on 10/4/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Check switch
    [self onOrOff:uiSwitchOut.on];
    
    //Info Button
    infoButt = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButt != nil)
    {
        infoButt.frame = CGRectMake(265.0f, 392.0f, 30.0f, 30.0f);
        [infoButt addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        infoButt.tag = 13;
        [self.view addSubview:infoButt];
    }
    
    
    [super viewDidUnload];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Switch function
-(void)onOrOff:(BOOL)isOn
{
    if (isOn == TRUE)
    {
        but0.enabled = TRUE;
        but1.enabled = TRUE;
        but2.enabled = TRUE;
        but3.enabled = TRUE;
        but4.enabled = TRUE;
        but5.enabled = TRUE;
        but6.enabled = TRUE;
        but7.enabled = TRUE;
        but8.enabled = TRUE;
        but9.enabled = TRUE;
        butPlus.enabled = TRUE;
        butEquals.enabled = TRUE;
        butClear.enabled = TRUE;
        segment.enabled = TRUE;
        textField.text = @"0";
    } else {
        but0.enabled = FALSE;
        but1.enabled = FALSE;
        but2.enabled = FALSE;
        but3.enabled = FALSE;
        but4.enabled = FALSE;
        but5.enabled = FALSE;
        but6.enabled = FALSE;
        but7.enabled = FALSE;
        but8.enabled = FALSE;
        but9.enabled = FALSE;
        butPlus.enabled = FALSE;
        butEquals.enabled = FALSE;
        butClear.enabled = FALSE;
        segment.enabled = FALSE;
        textField.text = @"";
    }

}
//Switch
-(IBAction)OnSwitched:(id)sender
{
    UISwitch *uiSwitch = (UISwitch*)sender;
    if (uiSwitch != nil)
    {
        [self onOrOff:uiSwitch.on];
    }
}


//Calculator Logic
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        //Number buttonss
        if (button.tag < 10)
        {
            number = button.tag;
            NSLog(@"%i", number);
        }
        //Plus button
        else if (button.tag ==10)
        {
            NSLog(@"PLuuuussssssssss");
        }
        //Equals Button
        else if (button.tag ==11)
        {
            NSLog(@"Euqaaaaaaallllsss");
        }
        //Clear Button
        else if (button.tag ==12)
        {
            NSLog(@"Cleeeaaaarrrrr");
        }
        //info button
        else if (button.tag == 13)
        {
            NSLog(@"innnnnnfoooooo");
        }

    }
}
-(IBAction)onSegementChange:(id)sender
{
    UISegmentedControl *seg = (UISegmentedControl*)sender;
    if (seg != nil)
    {
        int selectedIndex = seg.selectedSegmentIndex;
        
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
}


- (void)viewDidUnload
{

    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
