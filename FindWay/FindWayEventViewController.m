//
//  FindWayEventViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/17.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayEventViewController.h"
#import "FindWayMainTabBarViewController.h"
#import "FindWayMapViewController.h"
#import "FindWayPictureViewController.h"
#import "FindWayChatViewController.h"
#import "FindWayOptionViewController.h"

@interface FindWayEventViewController ()

@end

@implementation FindWayEventViewController
@synthesize eventData;
@synthesize navController;
@synthesize controllers;



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    FindWayEventViewController *first = [[FindWayEventViewController alloc] initWithStyle:UITableViewStylePlain];
//    self.navController = [[UINavigationController alloc]initWithRootViewController:first];
//    [self.navController.view addSubview:navController.view];

    self.title = @"First";
    NSLog(@"FindWayEventViewController ViewDidLoad!");
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    self.controllers = array;
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"8/24 京站聚餐", @"8/26 週末淡水遊", nil];
    self.eventData = array;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.eventData = nil;
    self.controllers = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.eventData count];
    //return [self.controllers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    UIImage *image = [UIImage imageNamed:@"gathering.jpg"];
    cell.imageView.image = image;
    
    NSUInteger row = [indexPath row];

    cell.textLabel.text = [eventData objectAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    //NSUInteger row = [indexPath row];
    NSLog(@"Select row!");

    
    FindWayMainTabBarViewController *mainTabBar = [[FindWayMainTabBarViewController alloc] init];
    //FindWayMainTabBarViewController *mainTabBar = [[FindWayMainTabBarViewController alloc]initWithNibName:@"FindWayMainTabBar" bundle:nil];
    
    FindWayMapViewController *controller1 =[[FindWayMapViewController alloc] initWithNibName:@"FindWayMapView" bundle:nil];
    FindWayChatViewController  *controller2 =[[FindWayChatViewController alloc] initWithNibName:@"FindWayChatViewController" bundle:nil];
    FindWayPictureViewController *controller3 =[[FindWayPictureViewController alloc] initWithNibName:@"FindWayPictureViewController" bundle:nil];
    FindWayOptionViewController *controller4 =[[FindWayOptionViewController alloc] initWithNibName:@"FindWayOptionViewController" bundle:nil];
    
    
    NSArray *controllers = [NSArray arrayWithObjects:controller1, controller2, controller3, controller4, nil];
    
    [mainTabBar setViewControllers:controllers];
    
    [self presentModalViewController:mainTabBar animated:YES];
    
    //[self.navController pushViewController:mainTabBar animated:YES];
}

@end
