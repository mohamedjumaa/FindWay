//
//  FindWayMainViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/8/30.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayMainViewController.h"
#import "FindWayAppDelegate.h"
#import "FindWayMainTabBarViewController.h"
#import "FindWayEventViewController.h"

@interface FindWayMainViewController () <FBLoginViewDelegate>

@end

@implementation FindWayMainViewController


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
    // Create Login View so that the app will be granted "status_update" permission.
    FBLoginView *loginview =
    [[FBLoginView alloc] initWithPermissions:[NSArray arrayWithObject:@"publish_actions"]];
    
    loginview.frame = CGRectOffset(loginview.frame, 80, 220);
    loginview.delegate = self;
    
    [self.view addSubview:loginview];
    
    [loginview sizeToFit];
    
    

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

-(IBAction)buttonPressed:(id)sender
{
    NSLog(@"button pressed.");
//    FindWayEventViewController *mainBar = [[FindWayEventViewController alloc] initWithNibName:@"FindWayEventViewController" bundle:nil];
//    [self.view addSubview:mainBar.view];
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView;
{
    FindWayMainTabBarViewController *mainBar = [[FindWayMainTabBarViewController alloc] init];
    [self.tabBarController.selectedViewController presentModalViewController:mainBar animated:YES];
    
//    [self.view addSubview:mainBar.view];
    
    NSLog(@"ShowingloggedInUser");
}


- (IBAction)performLogin:(id)sender
{
//    [self.spinner startAnimating];
    
    FindWayAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate openSession];
}


@end
