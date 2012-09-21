//
//  FindWayInvitationViewController.h
//  FindWay
//
//  Created by Roger Liu on 12/9/19.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindWayInvitationViewController : UIViewController <UINavigationBarDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *ToStep2;

-(IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)ToStep2:(id)sender;
-(IBAction)back_clicked:(id)sender;
@end
