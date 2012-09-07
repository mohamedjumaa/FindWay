//
//  FriendListTabBarController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/6.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FriendListTabBarController.h"
#import "FriendListTableViewController.h"
#import "FindWayInvitationViewController.h"

@interface FriendListTabBarController ()

@end

@implementation FriendListTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSLog(@"item:%@ be triggered", item.title);
    if( [item.title isEqualToString:@"Friend"])
    {
        FriendListTableViewController *instance = [[FriendListTableViewController alloc] init];
        [self.view addSubview:instance.view];
        
    }
    if( [item.title isEqualToString:@"Friend"])
    {
        FindWayInvitationViewController *instance = [[FindWayInvitationViewController alloc] init];
        [self.view addSubview:instance.view];
        
    }
    
    
    
    [self.view bringSubviewToFront:tabBar];
}


@end
