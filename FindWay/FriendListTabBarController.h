//
//  FriendListTabBarController.h
//  FindWay
//
//  Created by Roger Liu on 12/9/6.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface FriendListTabBarController : UIViewController <UITabBarDelegate,FBFriendPickerDelegate>
{
    FBFriendPickerViewController *friendPickerController;
}
@property (strong, nonatomic) FBFriendPickerViewController *friendPickerController;


@end

