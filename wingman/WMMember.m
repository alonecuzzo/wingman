//
//  WMMember.m
//  wingman
//
//  Created by Justin Martin on 5/22/13.
//  Copyright (c) 2013 Two Wing Productions. All rights reserved.
//

#import "WMMember.h"

@implementation WMMember

+(WMMember *) memberWithName:(NSString *)name andMaleGender:(BOOL)male {
    WMMember *mem  = [[WMMember alloc] init];
    mem.name = name;
    mem.isMale = male;
    return mem;
}

@end
