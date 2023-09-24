//
//  ViewController.m
//  Loops
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // for loop
    int sum = 0;
    for (int i = 0; i < 10; i++) {
        sum += i;
    }
    NSLog(@"0...9 sum is: %d", sum);
    [self addHorizontalLine];
    
    
    // while loop
    int j = 10;
    while (j > 0) {
        NSLog(@"%d", j);       // 10 9 8 7 6 5 4 3 2 1
        j -= 1;
    }
    [self addHorizontalLine];
    
    
    // do while loop
    int k = 5;
    do {
        NSLog(@"%d", k);       // 5 4 3 2 1
        k -= 1;
    } while (k > 0 && k < 5);
}


- (void)addHorizontalLine {
    NSLog(@"-------------------------");
}


@end
