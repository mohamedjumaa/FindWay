//
//  FindWayFirstViewController.m
//  FindWay
//
//  Created by Lion User on 12/8/22.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayFirstViewController.h"

@interface FindWayFirstViewController () 

@end

@implementation FindWayFirstViewController

- (void)viewDidLoad
{
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
