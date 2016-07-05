//
//  ViewController.h
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSMutableString *inputString;

@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;


@end

