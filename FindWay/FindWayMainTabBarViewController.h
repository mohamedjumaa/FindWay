//
//  FindWayMainTabBarViewController.h
//  FindWay
//
//  Created by Roger Liu on 12/9/18.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FindWayMapViewController.h"
#import "FindWayMainTabBarDelegate.h"

@interface FindWayMainTabBarViewController : UITabBarController<UITabBarControllerDelegate>
{
    UINavigationController *navController;
}
@property (strong, nonatomic) FindWayMapViewController *mapViewController;
@property (strong, nonatomic) UINavigationController *navController;
@end
