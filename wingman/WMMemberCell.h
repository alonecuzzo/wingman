//
//  WMMemberCell.h
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMMember.h"
#define MemberCellID @"MemberCell"

@class WMMemberCell;
@protocol MemberRemover <NSObject>
-(void) removeMemberCell:(WMMemberCell *)cell;
@end

@interface WMMemberCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *genderImage;
@property (weak, nonatomic) IBOutlet UIButton *removeButton;
@property (strong, nonatomic) WMMember *member;
@property (strong, nonatomic) id<MemberRemover> delegate;

@end
