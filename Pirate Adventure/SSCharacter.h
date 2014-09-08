//
//  SSCharacter.h
//  Pirate Adventure
//
//  Created by Seshadri Sundaram on 08/09/14.
//  Copyright (c) 2014 Seshadrins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSArmor.h"
#import "SSWeapon.h"

@interface SSCharacter : NSObject

@property (strong, nonatomic) SSArmor *armor;
@property (strong, nonatomic) SSWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
