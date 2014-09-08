//
//  SSTile.h
//  Pirate Adventure
//
//  Created by Seshadri Sundaram on 05/09/14.
//  Copyright (c) 2014 Seshadrins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSWeapon.h"
#import "SSArmor.h"

@interface SSTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) SSWeapon *weapon;
@property (strong, nonatomic) SSArmor *armor;
@property (nonatomic) int healthEffect;

@end
