//
//  FindWayChatViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/19.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayChatViewController.h"
#import "FindWayEventViewController.h"

@interface FindWayChatViewController ()

@end

@implementation FindWayChatViewController
@synthesize Back;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"即時訊息"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"ChatView in!!");
    self.navigationController.delegate = self;


}

- (void)viewDidUnload
{
    [self setBack:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"willShowViewController");
    if ([viewController isKindOfClass:[FindWayEventViewController class]]) {
        NSLog(@"back!!!!");
    } else {
        NSLog(@"forward");
    }
}

@end
