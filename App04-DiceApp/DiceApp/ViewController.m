//
//  ViewController.m
//  DiceApp
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rollButton.layer.cornerRadius = 16;
}


- (IBAction)rollButtonTapped:(id)sender {
    const int randomNumber = arc4random() % 6 + 1;
    
    NSString *imageName = [NSString stringWithFormat:@"Dice%d",randomNumber];
    self.imageView.image = [UIImage imageNamed:imageName];
}

@end
