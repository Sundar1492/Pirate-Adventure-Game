//
//  SSFactory.m
//  Pirate Adventure
//
//  Created by Seshadri Sundaram on 05/09/14.
//  Copyright (c) 2014 Seshadrins. All rights reserved.
//

#import "SSFactory.h"
#import "SSTile.h"

@implementation SSFactory

-(NSArray *)tiles
{
    SSTile *tile1 = [[SSTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You are the one who could stop the evil pirate Boss. Would you like a blunted sword to get started SIRE!";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    SSWeapon *bluntedSword = [[SSWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    SSTile *tile2 = [[SSTile alloc] init];
    tile2.story = @"You have come across armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    SSArmor *steelArmor = [[SSArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";

    
    SSTile *tile3 = [[SSTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon, should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
   
    SSTile *tile4 = [[SSTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    SSArmor *parrotArmor = [[SSArmor alloc] init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.actionButtonName = @"Adopt Parrot";
    
    SSTile *tile5 = [[SSTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    SSWeapon *pistolWeapon = [[SSWeapon alloc] init];
    pistolWeapon.name = @"Pistol Weapon";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"Use Pistol";
    
    SSTile *tile6 = [[SSTile alloc] init];
    tile6.story = @"You have been captures by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    SSTile *tile7 = [[SSTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    SSTile *tile8 = [[SSTile alloc] init];
    tile8.story = @"The legend of the deep, the mighty Kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship";
    
    SSTile *tile9 = [[SSTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    SSTile *tile10 = [[SSTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    SSTile *tile11 = [[SSTile alloc] init];
    tile11.story = @"In the deep of the sea many thing live and many things can be found. Will the fortune bring help or ruin";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = 7;
    tile11.actionButtonName = @"Take the sword";
    
    SSTile *tile12 = [[SSTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -25;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(SSCharacter *)character
{
    SSCharacter *character = [[SSCharacter alloc] init];
    character.health = 100;
    SSArmor *armor = [[SSArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    SSWeapon *weapon = [[SSWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(SSBoss *)boss
{
    SSBoss *boss = [[SSBoss alloc] init];
    boss.health = 75;
    return boss;
}

@end
