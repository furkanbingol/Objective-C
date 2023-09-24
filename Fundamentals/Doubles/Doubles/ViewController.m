//
//  ViewController.m
//  Doubles
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    d1 = 100.35;
    d2 = 100.65;
    double doubleSum = d1 + d2;
    
    f1 = 51.22;
    f2 = 0.78;
    float floatSum = f1 + f2;
    
    NSLog(@"%f", doubleSum);       // 201.00000
    NSLog(@"%.2f", doubleSum);     // 201.00
    NSLog(@"%.2f", floatSum);      // 52.00
    
    // Navigation Bar Title
    self.title = [NSString stringWithFormat:@"Double Sum = %.2f", doubleSum];
}

@end
