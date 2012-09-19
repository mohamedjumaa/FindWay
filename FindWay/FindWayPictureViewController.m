//
//  FindWayPictureViewController.m
//  FindWay
//
//  Created by Roger Liu on 12/9/19.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayPictureViewController.h"

@interface FindWayPictureViewController ()

@end

@implementation FindWayPictureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"拍照"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    imagePicker.delegate = self;
    imagePicker.allowsEditing = NO;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
