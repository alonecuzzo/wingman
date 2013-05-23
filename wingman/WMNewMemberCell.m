//
//  WMNewMemberCell.m
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import "WMNewMemberCell.h"

@implementation WMNewMemberCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}
- (IBAction)addMemberPressed:(id)sender {
    [self.delegate addMemberWithName:self.nameTextField.text andGender:self.isMale];
    self.isMale = YES;
    [self.genderButton setTitle:@"Male" forState:UIControlStateNormal];
    self.nameTextField.text = @"";
}
- (IBAction)genderButtonPressed:(id)sender {
    if (self.isMale) {
        self.isMale = NO;
        [self.genderButton setTitle:@"Female" forState:UIControlStateNormal];
    }
    else {
        self.isMale = YES;
        [self.genderButton setTitle:@"Male" forState:UIControlStateNormal];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
