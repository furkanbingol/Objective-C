//
//  ViewController.m
//  IfStatements
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // if, else
    bool state = true;
    if (state) {
        self.labelOne.text = @"Allow access.";
    } else {
        self.labelOne.text = @"Deny access.";
    }
    
    
    // if, else if, else
    NSString *name = @"Furkan";
    if (name == @"Furkan") {                     // Direct comparison of a string literal has undefined behavior.
        self.labelTwo.text = @"Names are equal.";
    } else if ([name  isEqualToString:@"Kevin"]) {
        self.labelTwo.text =  @"Other name is Kevin.";
    } else {
        self.labelTwo.text = @"Other name is unknown.";
    }
    
    
    // < >
    int number = 750;
    if (number < 500) {
        self.labelThree.text = @"Unlock level 2";
    } else if (number < 600) {
        self.labelThree.text = @"Unlock level 3";
    } else if (number < 700) {
        self.labelThree.text = @"Unlock level 4";
    } else if (number < 800) {
        self.labelThree.text = @"Unlock level 5";
    }
    
    
    // ||: or
    NSString *color = @"Dark Blue";
    if ([color isEqualToString:@"Green"] || [color isEqualToString:@"Dark Blue"]) {
        self.labelFour.text = @"Color is Green or Dark Blue";
    }
    
    
    // &&: and
    double value = 10.7;
    if (value > 0 && value < 5.5) {
        self.labelFive.text = @"0 - 5.5";
    } else if (value >= 5.5 && value < 11) {
        self.labelFive.text = @"5.5 - 11";
    } else {
        self.labelFive.text = @">= 11";
    }
}


@end
