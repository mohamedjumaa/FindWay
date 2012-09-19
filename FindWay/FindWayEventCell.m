//
//  FindWayEventCell.m
//  FindWay
//
//  Created by Roger Liu on 12/9/17.
//  Copyright (c) 2012年 Lion User. All rights reserved.
//

#import "FindWayEventCell.h"

#define messageTag 1
#define pictureTag 2

@implementation FindWayEventCell
@synthesize message;
@synthesize picture;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGRect messageLabelRect = CGRectMake(0, 5, 70, 15);
        UILabel *messageLabel = [[UILabel alloc]initWithFrame:messageLabelRect];
        messageLabel.textAlignment = UITextAlignmentRight;
        messageLabel.text = @"新訊息：";
        messageLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview: messageLabel];
        
        CGRect pictureLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *pictureLabel = [[UILabel alloc]initWithFrame:pictureLabelRect];
        pictureLabel.textAlignment = UITextAlignmentRight;
        pictureLabel.text = @"新圖片：";
        pictureLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview: pictureLabel];
        
        CGRect messageValueRect = CGRectMake(80, 5, 200, 15);
        UILabel *messageValue = [[UILabel alloc]initWithFrame:messageValueRect];
        messageValue.tag = messageTag;
        [self.contentView addSubview:messageValue];
   
        CGRect pictureValueRect = CGRectMake(80, 25, 200, 15);
        UILabel *pictureValue = [[UILabel alloc]initWithFrame:pictureValueRect];
        pictureValue.tag = pictureTag;
        [self.contentView addSubview:pictureValue];

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setMessage:(NSString *)n {
    if (![n isEqualToString:@"訊息"]) {
        message = [n copy];
        UILabel *messageLabel = (UILabel *)[self.contentView viewWithTag:messageTag];
        messageLabel.text = message;
        
    }
}

-(void)setPicture:(NSString *)p {
    if (![p isEqualToString:@"圖片"]) {
        picture = [p copy];
        UILabel *pictureLabel = (UILabel *)[self.contentView viewWithTag:pictureTag];
        pictureLabel.text = picture;
        
    }
}


@end
