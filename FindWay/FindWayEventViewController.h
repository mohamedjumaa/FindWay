//
//  FindWayEventViewController.h
//  FindWay
//
//  Created by Roger Liu on 12/9/17.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindWayEventViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate, UITabBarControllerDelegate>
{
    UIToolbar *toolBar;
    
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *Back;
@property (strong, nonatomic)NSArray *controllers;
@property (strong, nonatomic)NSArray *eventData;
@property (strong, nonatomic)UIToolbar *toolBar;


- (void)loginFailed;
@end
