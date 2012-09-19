//
//  FriendListTabBarController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/6.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FriendListTabBarController.h"


@interface FriendListTabBarController ()

@end

@implementation FriendListTabBarController
@synthesize friendPickerController = _friendPickerController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSLog(@"item:%@ be triggered", item.title);
    if( [item.title isEqualToString:@"Friend"])
    {
//        FindWayFBFriendViewController *instance = [[FindWayFBFriendViewController alloc] init];
//        [self.view addSubview:instance.view];
        if (!FBSession.activeSession.isOpen) {
            // if the session is closed, then we open it here, and establish a handler for state changes
            [FBSession.activeSession openWithCompletionHandler:^(FBSession *session,
                                                                 FBSessionState state,
                                                                 NSError *error) {
                NSLog(@"state=%u",state);
                switch (state) {
                    case FBSessionStateClosedLoginFailed:
                    {
                        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                                            message:error.localizedDescription
                                                                           delegate:nil
                                                                  cancelButtonTitle:@"OK"
                                                                  otherButtonTitles:nil];
                        [alertView show];
                    }
                        break;
                    default:
                        break;
                }
            }];
        } else {
            [[FBRequest requestForMe] startWithCompletionHandler:
             ^(FBRequestConnection *connection,
               NSDictionary<FBGraphUser> *user,
               NSError *error) {
                 if (!error) {
                     NSLog(@"user=%@",user.name);
                     NSLog(@"id=%@",user.id);
                 }
             }];
            
        }
        
        if (!self.friendPickerController) {
            NSLog(@"Friend friendPickerController in!!!");
            self.friendPickerController = [[FBFriendPickerViewController alloc] init];
            self.friendPickerController.title = @"選擇欲邀請的朋友";
            self.friendPickerController.delegate = self;
        }
        
        [self.friendPickerController loadData];
        NSLog(@"Friend load view");
        //[self.view addSubview:friendPickerController.view];
        [self presentModalViewController:self.friendPickerController animated:YES];

        
    }
    if( [item.title isEqualToString:@"Invitation"])
    {
        //FindWayInvitationViewController *instance = [[FindWayInvitationViewController alloc] init];
        //[self.view addSubview:instance.view];
        
    }
    
    
    
    [self.view bringSubviewToFront:tabBar];
}


- (void)facebookViewControllerDoneWasPressed:(id)sender {
    NSMutableString *text = [[NSMutableString alloc] init];
    
    // we pick up the users from the selection, and create a string that we use to update the text view
    // at the bottom of the display; note that self.selection is a property inherited from our base class
    for (id<FBGraphUser> user in self.friendPickerController.selection) {
        if ([text length]) {
            [text appendString:@", "];
        }
        [text appendString:user.name];
    }
    
    [self fillTextBoxAndDismiss:text.length > 0 ? text : @"<None>"];
}

- (void)facebookViewControllerCancelWasPressed:(id)sender {
    [self fillTextBoxAndDismiss:@"<Cancelled>"];
}

- (void)fillTextBoxAndDismiss:(NSString *)text {
    //self.selectedFriendsView.text = text;
    
    [self dismissModalViewControllerAnimated:YES];
}


@end
