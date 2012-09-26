//
//  ViewController.m
//  AOC2_Wk1
//
//  Created by Brandon Sease on 9/25/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"
#import "TextClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textClass = [[TextClass alloc] init];
    if (textClass != nil)
    {
        
    }
    
    textLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    textLable.text = [textClass getText];
    [self.view addSubview:textLable];
    
    
    
    
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
