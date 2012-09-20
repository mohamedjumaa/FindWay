//
//  FindWayInvitationViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/19.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayInvitationViewController.h"
#import "FindWayInvitationMapViewController.h"

@interface FindWayInvitationViewController ()

@end

@implementation FindWayInvitationViewController
@synthesize ToStep2;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setToStep2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item
{
    NSLog(@"didPushItem!");
}


- (IBAction)ToStep2:(id)sender
{
    NSLog(@"ToStep2!");
    FindWayInvitationMapViewController *step2 = [[FindWayInvitationMapViewController alloc] initWithNibName:@"FindWayInvitationMapViewController" bundle:nil];
    //[self.view addSubview:step2.view ];
    [self.navigationController pushViewController:step2 animated:YES];
     
}

- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

@end
