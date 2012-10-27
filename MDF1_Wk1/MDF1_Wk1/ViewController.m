//
//  ViewController.m
//  MDF1_Wk1
//
//  Created by Brandon Sease on 10/24/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "ViewController.h"
#import "DataLayer.h"
#import "CustomTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Pull from data source
    dataLayer = [[DataLayer alloc] init];
    list = [dataLayer getList];
    NSLog(@"%d", list.count);
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Create cells / List view perimeters 
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //set list legnth to array legnth
    return list.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
//       
//        for (UIView *view in views)
//        {
//            if ([view isKindOfClass:[CustomTableCell class]])
//            {
//                cell = (CustomTableCell*)view;
//                
//                //cell.textLabel.text = [list objectAtIndex:indexPath.row];
//
//            }
//        }
        cell.textLabel.text = [list objectAtIndex:indexPath.row];
    }
    
    return cell;
}

//Edit button
-(IBAction)onEdit:(id)sender
{
    //Check on or off and make opposite
    if (tableView.editing == TRUE)
    {
        [tableView setEditing:FALSE];
    }
    else
    {
        [tableView setEditing:TRUE];
    }

}

//Delete item from list
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //Remove from array and list view
        [list removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:TRUE];
    }
}

@end
