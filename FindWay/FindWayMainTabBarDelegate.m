//
//  FindWayMainTabBarDelegate.m
//  FindWay
//
//  Created by Lion User on 12/8/22.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayMainTabBarDelegate.h"
#import "FindWayMainTabBarViewController.h"



@implementation FindWayMainTabBarDelegate
@synthesize rootController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"MainDelegate in!!");

    [[NSBundle mainBundle]loadNibNamed:@"FindWayMainTabBar" owner:self options:nil];
    [self.window addSubview:rootController.view];
    [self.window makeKeyAndVisible];

    return YES;
}
@end