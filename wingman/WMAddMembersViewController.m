//
//  WMAddMembersViewController.m
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import "WMAddMembersViewController.h"
#import "WMMember.h"

@interface WMAddMembersViewController ()
@property (nonatomic, strong) NSMutableArray *members;
@end

@implementation WMAddMembersViewController

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
    
    self.membersTable.delegate = self;
    self.membersTable.dataSource = self;
    
    self.members = [NSMutableArray array];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.members count] + 1;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        WMNewMemberCell *cell = [self.membersTable dequeueReusableCellWithIdentifier:NewMemberCellID forIndexPath:indexPath];
        cell.delegate = self;
        return cell;
    }
    
    WMMemberCell *cell = [self.membersTable dequeueReusableCellWithIdentifier:MemberCellID forIndexPath:indexPath];
    cell.delegate = self;
    WMMember *mem = [self.members objectAtIndex:indexPath.row - 1];
    cell.nameLabel.text = mem.name;
    if (mem.isMale)
        cell.genderImage.image = [UIImage imageNamed:@"male-icon"];
    else
        cell.genderImage.image = [UIImage imageNamed:@"female-sign"];
    cell.member = mem;
    return cell;
}

-(void) addMemberWithName:(NSString *)name andGender:(BOOL)male {
    WMMember *mem = [WMMember memberWithName:name andMaleGender:male];
    [self.members addObject:mem];
    [self.membersTable reloadData];
}

-(void) removeMemberCell:(WMMemberCell *)cell {
    WMMember *mem = cell.member;
    NSIndexPath *i = [self.membersTable indexPathForCell:cell];
    [self.membersTable beginUpdates];
    [self.membersTable deleteRowsAtIndexPaths:@[i] withRowAnimation:UITableViewRowAnimationLeft];
    [self.members removeObject:mem];
    [self.membersTable endUpdates];
}

@end
