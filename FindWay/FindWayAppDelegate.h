//
//  FindWayAppDelegate.h
//  FindWay
//
//  Created by Lion User on 12/8/22.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FindWayMainViewController.h"

@interface FindWayAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FindWayMainViewController *mainviewController;
- (void)openSession;

@end
