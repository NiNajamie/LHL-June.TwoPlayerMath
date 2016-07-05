//
//  Player.m
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        
        // each player has 3 lives by default
        _lives = 3;
    }
    return self;
}

@end
