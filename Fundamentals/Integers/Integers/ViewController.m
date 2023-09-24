//
//  ViewController.m
//  Integers
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%d", intOne);       // default value of int: 0
    NSLog(@"%d", intTwo);       // default value of int: 0
    
    intOne = 10;
    intTwo = 40;
    NSLog(@"%d", intOne);
    
    int sum = intOne + intTwo;
    NSLog(@"%d", sum);
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", sum];
}


@end
