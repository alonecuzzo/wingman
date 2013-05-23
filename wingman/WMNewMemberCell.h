//
//  WMNewMemberCell.h
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#define NewMemberCellID @"NewMemberCell"

@protocol MemberAdder
-(void) addMemberWithName:(NSString *)name andGender:(BOOL)male;
@end

@interface WMNewMemberCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *genderButton;
@property BOOL isMale;
@property (strong, nonatomic) id<MemberAdder> delegate;

@end
