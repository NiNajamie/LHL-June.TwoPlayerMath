//
//  GameController.m
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "GameController.h"

@implementation GameController


- (instancetype) init {
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
        
        // by default, currentPlayer is player1
        _currentPlayer = self.player1;
        
        // get random number between 1 and 20
        _number1 = arc4random_uniform(20) + 1;
        _number2 = arc4random_uniform(20) + 1;
        _sum = self.number1 + self.number2;
        
    }
    return self;
}

- (void) switchPlayer {
    
    self.number1 = arc4random_uniform(20) + 1;
    self.number2 = arc4random_uniform(20) + 1;

    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
        
    } else {
        self.currentPlayer = self.player1;
    }
}


- (void) loseOneLife {
    
    if (self.currentPlayer == self.player1) {
        self.player1.lives--;
        
    } else {
        self.player2.lives--;
    }
}



@end
