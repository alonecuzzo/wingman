//
//  WMAddMembersViewController.h
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMMemberCell.h"
#import "WMNewMemberCell.h"
#import "WMMember.h"

@interface WMAddMembersViewController : UIViewController <MemberAdder, MemberRemover,UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *membersTable;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@end
