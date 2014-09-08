//
//  SSFactory.h
//  Pirate Adventure
//
//  Created by Seshadri Sundaram on 05/09/14.
//  Copyright (c) 2014 Seshadrins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSCharacter.h"
#import "SSBoss.h"

@interface SSFactory : NSObject

-(NSArray *)tiles;
-(SSCharacter *)character;
-(SSBoss *)boss;

@end
