//
//  ViewController.m
//  UIElement-Switch
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


- (IBAction)switchTapped:(UISwitch *)sender {
    if([self.switchElement isOn]) {
        self.offOnLabel.text = @"Switch is on!";
    } else {
        self.offOnLabel.text = @"Switch is off!";
    }
}

@end
