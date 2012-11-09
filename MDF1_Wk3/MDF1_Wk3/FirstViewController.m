//
//  FirstViewController.m
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/6/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "FirstViewController.h"
#import "DataSource.h"
#import "MapViewController.h"
#import "Annotations.h"


@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"List", @"List");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    DataSource *data = [[DataSource alloc] init];
    list = [data getData];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Table Rows
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return list.count;
}
//Table Cell
-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [[list objectAtIndex:indexPath.row] subtitle];
    return cell;
}

//Click for details
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MapViewController *mapView = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    if (mapView != nil)
    {
        //These commands work fine in the above function I have no idea why they arnt working in this one. Maybe the index path is being seen differently. If the paths would work I believe this code would work as well. 
        NSLog(@"%@", [list objectAtIndex:indexPath.row]);
        mapView.annotation = [list objectAtIndex:indexPath.row];
        //NSLog(@"%@", [[list objectAtIndex:indexPath.row] coordinate]);
        mapView.loc = [[list objectAtIndex:indexPath.row] coordinate];
        NSLog(@"%@", [[list objectAtIndex:indexPath.row] title]);
        mapView.titleText = [[list objectAtIndex:indexPath.row] title];
        NSLog(@"%@", [list objectAtIndex:indexPath.row]);
        mapView.subtitleText =[[list objectAtIndex:indexPath.row] subtitle];
        NSLog(@"%@", [list objectAtIndex:indexPath.row]);
        mapView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:mapView animated:TRUE completion:nil];
    }
    
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
