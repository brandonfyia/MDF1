//
//  ViewController.h
//  AOC2_Wk2
//
//  Created by Brandon Sease on 10/4/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *but1;
    IBOutlet UIButton *but2;
    IBOutlet UIButton *but3;
    IBOutlet UIButton *but4;
    IBOutlet UIButton *but5;
    IBOutlet UIButton *but6;
    IBOutlet UIButton *but7;
    IBOutlet UIButton *but8;
    IBOutlet UIButton *but9;
    IBOutlet UIButton *but0;
    IBOutlet UIButton *butPlus;
    IBOutlet UIButton *butEquals;
    IBOutlet UIButton *butClear;
    IBOutlet UITextField *textField;
    IBOutlet UISegmentedControl *segment;
    int *firstNum;
    int *secondNum;
    int number;
    NSMutableString *numberBuilder;
    IBOutlet UISwitch *uiSwitchOut;
    UIButton *infoButt;
}

-(IBAction)onClick:(id)sender;
-(IBAction)OnSwitched:(id)sender;
-(void)onOrOff:(BOOL)isOn;
@end
