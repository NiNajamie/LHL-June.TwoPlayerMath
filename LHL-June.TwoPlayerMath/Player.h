//
//  Player.h
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger lives;

- (instancetype)initWithName:(NSString *)name;

@end
