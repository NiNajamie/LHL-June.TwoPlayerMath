//
//  ViewController.m
//  LHL-June.TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-07-04.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ViewController.h"
#import "GameController.h"

@interface ViewController ()

@property (nonatomic, strong) GameController *gameController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gameController = [[GameController alloc] init];
    self.inputString = [[NSMutableString alloc] init];
    self.questionLabel.text = [NSString stringWithFormat:@"%@: %i + %i =__", self.gameController.currentPlayer.name, self.gameController.number1, self.gameController.number2];
    
    [self updatePlayerScore];
}

- (void) updatePlayerScore {
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"Player 1 Score: %li", (long)self.gameController.player1.lives];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"Player 2 Score: %li", (long)self.gameController.player2.lives];
}


- (IBAction)checkSumPressed:(UIButton *)sender {
    
    if ([self.inputString intValue] == self.gameController.sum) {
        NSLog(@"Sum:%d, InputString:%d", self.gameController.sum, [self.inputString intValue]);
        [self.gameController switchPlayer];
        
        
    } else {
        [self.gameController loseOneLife];
        [self updatePlayerScore];
        
        if (self.gameController.currentPlayer.lives <= 0) {
            self.questionLabel.text = [NSString stringWithFormat:@"Game Over!"];
            NSLog(@"Game Over!");
        }
        
        [self.gameController switchPlayer];
    }
    
    // Resetting userInput for starting randomize number
    self.inputString = [[NSString stringWithFormat:@""] mutableCopy];

    self.questionLabel.text = [NSString stringWithFormat:@"%@: %i + %i =__", self.gameController.currentPlayer.name, self.gameController.number1, self.gameController.number2];
}



- (IBAction)pressed1:(UIButton *)sender {
    [self.inputString appendString:@"1"];
}

- (IBAction)pressed2:(UIButton *)sender {
    [self.inputString appendString:@"2"];
}

- (IBAction)pressed3:(UIButton *)sender {
    [self.inputString appendString:@"3"];
}

- (IBAction)pressed4:(UIButton *)sender {
    [self.inputString appendString:@"4"];
}

- (IBAction)pressed5:(UIButton *)sender {
    [self.inputString appendString:@"5"];
}

- (IBAction)pressed6:(UIButton *)sender {
    [self.inputString appendString:@"6"];
}

- (IBAction)pressed7:(UIButton *)sender {
    [self.inputString appendString:@"7"];
}

- (IBAction)pressed8:(UIButton *)sender {
    [self.inputString appendString:@"8"];
}

- (IBAction)pressed9:(UIButton *)sender {
    [self.inputString appendString:@"9"];
}

- (IBAction)pressed0:(UIButton *)sender {
    [self.inputString appendString:@"0"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
