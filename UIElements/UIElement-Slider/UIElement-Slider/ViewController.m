//
//  ViewController.m
//  UIElement-Slider
//
//  Created by FURKAN BINGOL on 30.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)sliderChanged:(id)sender {
    int value = self.slider.value;
    
    [self.label setFont:[UIFont fontWithName:@"Verdana" size:value]];
}

@end
