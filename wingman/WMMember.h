//
//  WMMember.h
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WMMember : NSObject

+(WMMember *) memberWithName:(NSString *)name andMaleGender:(BOOL)male;

@property (strong, nonatomic) NSString *name;
@property BOOL isMale;

@end
