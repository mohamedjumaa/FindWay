//
//  FindWayMapViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/18.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayMapViewController.h"
#import "FindWayEventViewController.h"
#import "ToolBarHelper.h"

//static ToolbarHelper *instance = nil;
//
//@implementation ToolbarHelper
//@synthesize eventToolBar;
//+ (ToolbarHelper *)newInstance{
//    @synchronized(self) {
//        if (instance == nil){
//            instance = [[ToolbarHelper alloc]init];
//            //[instance openDatabase];
//        }
//    }
//    
//    return instance;
//    
//}
//
//
//@end


@interface FindWayMapViewController ()

@end

@implementation FindWayMapViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"地圖"];
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

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"willShowViewController");
    if ([viewController isKindOfClass:[FindWayEventViewController class]]) {
//        ToolbarHelper *eventToolBar = [ToolbarHelper newInstance];
//        [eventToolBar setHidden:FALSE];
        
        NSLog(@"back!!!!");
    } else {
        NSLog(@"forward");
    }
}


@end
