//
//  ViewController.m
//  TrafficLights
//
//  Created by FURKAN BINGOL on 28.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureInitialState];
}


-(void)configureInitialState {
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%d", scoreInt];
}


- (IBAction)startButtonTapped:(id)sender {
    if(scoreInt == 0 || [self.startButton.titleLabel.text isEqual:@"Restart"]) {
        if([self.startButton.titleLabel.text isEqual:@"Restart"]) {
            scoreInt = 0;
            self.scoreLabel.text = [NSString stringWithFormat:@"%d", scoreInt];
        }
        
        timerInt = 3;
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight"];
        [self.startButton setTitle:@"" forState:UIControlStateNormal];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(startCounter)
                                               userInfo:nil
                                                repeats:true];
        self.startButton.enabled = false;
    } else {
        [scoreTimer invalidate];
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}


-(void)startCounter {
    timerInt -= 1;
    
    if(timerInt == 2) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight3"];
    } else if(timerInt == 1) {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight2"];
    } else {
        self.trafficLight.image = [UIImage imageNamed:@"trafficLight1"];
        
        [timer invalidate];
        self.startButton.enabled = true;
        [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
        
        scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.00005
                                                      target:self
                                                    selector:@selector(increaseScore)
                                                    userInfo:nil
                                                     repeats:true];
    }
}


-(void)increaseScore {
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%d", scoreInt];
}

@end
