//
//  ViewController.m
//  RandomNumbers
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)random0100:(id)sender {
    // MARK: - Random Number Generator ---> arc4random()
    int randomNumber = arc4random() % 101;    // 0-100
    self.label1.text = [NSString stringWithFormat:@"%d",randomNumber];
}


- (IBAction)random1020:(id)sender {
    int min = 10;
    int max = 21;
    
    int randomNumber = arc4random_uniform(max - min) + min;
    self.label2.text = [NSString stringWithFormat:@"%d",randomNumber];
}

@end
