//
//  ViewController.m
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/26/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Create a custom tint quote and set number of windows
    customTint *fordRanger = (customTint*)[customCarFactory createNewCustomCar:TINT];
    [fordRanger setWindows:3];
    
    if (fordRanger != nil)
    {
        //Create the matierial array
        NSArray *fordRangerMaterials = [[NSArray alloc] initWithObjects:@"a roll of 25% tint film",@"a squirt bottle of water", @"a squeegee", nil];
        [fordRanger setMaterials:fordRangerMaterials];
        
        //Create the job description string
        NSString *fordRangerDescription = @"Cut tint film to size. Wet windows. Apply Film. Squeegee out air bubbles.";
        [fordRanger setJobDescription:fordRangerDescription];
        
        //Print
        tintConfirm = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 300.0f, 20.0f)];
        if (tintConfirm != nil)
        {
            tintConfirm.text = @"You've created a custom tint quote!";
            tintConfirm.textAlignment = UITextAlignmentCenter;
            [self.view addSubview:tintConfirm];
        }
        tintDetails = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 45.0f, 320.0f, 175.0f)];
        if (tintDetails != nil)
        {
            tintDetails.text = [NSString stringWithFormat:@"Job's general description: %@ and would require: %@", fordRanger.jobDescription, fordRanger.materials];
            tintDetails.textAlignment = UITextAlignmentCenter;
            tintDetails.numberOfLines = 8;
            [self.view addSubview:tintDetails];
        }
        tintCost = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 240.0f, 320.0f, 175.0f)];
        if (tintCost != nil)
        {
            tintCost.text = [NSString stringWithFormat:@"A car with %d windows would cost $%d", fordRanger.windows, fordRanger.calculateCostPerJob];
            tintCost.textAlignment = UITextAlignmentCenter;
            tintCost.numberOfLines = 8;
            [self.view addSubview:tintCost];
        }
        //Calculate job cost
        [fordRanger calculateCostPerJob];
    }
    
    //Create a custom rims quote and set spinners yes or no
    customRims *gmcHummer = (customRims*)[customCarFactory createNewCustomCar:RIMS];
    [gmcHummer setSpinners:YES];
    
    if (gmcHummer != nil)
    {
        //Create the matierial array
        NSArray *gmcHummerMaterials = [[NSArray alloc] initWithObjects:@"4 rims larger than my house", @"lug nuts", @"a floor jack", nil];
        [gmcHummer setMaterials:gmcHummerMaterials];
        
        //Create the job description string
        NSString *gmcHummerDescription = @"Jack up vehicle. Remove Old rims and tires. Install new rims and tires.";
        [gmcHummer setJobDescription:gmcHummerDescription];
        
        //Print
        NSLog(@"You've created a custom rim quote.");
        NSLog(@"This job's general description is %@", gmcHummer.jobDescription);
        NSLog(@"The job would require %@", gmcHummer.materials);
        
        //Calculate job cost
        [gmcHummer calculateCostPerJob];
    }
    
    //Create a custom stereo quote and choose components
    customStereo *scionFRS = (customStereo*)[customCarFactory createNewCustomCar:STEREO];
    [scionFRS setHeadUnit:YES];
    [scionFRS setAmplifiers:2];
    [scionFRS setTweeters:2];
    [scionFRS setMidRange:2];
    [scionFRS setSubWoofers:3];
    
    if (scionFRS != nil)
    {
        //Create the matierial array
        NSArray *scionFRSMaterials = [[NSArray alloc] initWithObjects:@"All components to be installed", @"wiring and connectors", @"custom speaker box", nil];
        [scionFRS setMaterials:scionFRSMaterials];
        
        //Create the job description string
        NSString *scionFRSDescription = @"Remove old components. Run wiring. Install new components";
        [scionFRS setJobDescription:scionFRSDescription];
        
        //Print
        NSLog(@"You've created a custom stereo quote.");
        NSLog(@"This job's general description is %@", scionFRS.jobDescription);
        NSLog(@"The job would require %@", scionFRS.materials);
        
        //Calculate job cost
        [scionFRS calculateCostPerJob];
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
