//
//  GameController.h
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;

@property (nonatomic, strong) Player *currentPlayer;

@property (nonatomic) int number1;
@property (nonatomic) int number2;

@property (nonatomic) int sum;

- (void) loseOneLife;
- (void) switchPlayer;

@end
