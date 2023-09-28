//
//  ViewController.m
//  FadingUIElements
//
//  Created by FURKAN BINGOL on 28.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)fadeIn:(id)sender {
    // MARK: - Animations on Objective-C
    [UIView animateWithDuration:0.7 animations:^{           // Blocks(Obj-C) == Closure(Swift)
        self.label.alpha = 1.0;
        self.textView.alpha = 1.0;
        [self.segmentedControl setAlpha:1.0];
        [self.switchControl setAlpha:1.0];
    }];
}


- (IBAction)fadeOut:(id)sender {
    [UIView animateWithDuration:0.7 animations:^{
        self.label.alpha = 0;
        self.textView.alpha = 0;
        self.segmentedControl.alpha = 0;
        self.switchControl.alpha = 0;
    }];
}


@end
