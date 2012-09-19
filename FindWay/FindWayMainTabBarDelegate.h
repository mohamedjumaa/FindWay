//
//  FindWayMainTabBarDelegate.h
//  FindWay
//
//  Created by Lion User on 12/8/22.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol FindWayMainTabBarDelegate <NSObject>

@end
@interface FindWayMainTabBarDelegate :NSObject
{
   
}
@property (nonatomic, assign)id<FindWayMainTabBarDelegate> myDelegate;

@property (strong, nonatomic) IBOutlet UIWindow *window;
@property (strong, nonatomic) IBOutlet UITabBarController *rootController;


@end
