//
//  ViewController.m
//  UIElement-AlertView
//
//  Created by FURKAN BINGOL on 1.10.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)alertViewButtonTapped:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Success"
                                                                   message:@"You have finished the game."
                                                            preferredStyle:(UIAlertControllerStyleAlert)];
    
    UIAlertAction *button1 = [UIAlertAction actionWithTitle:@"OK"
                                                      style:(UIAlertActionStyleDefault)
                                                    handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"OK button tapped!";
    }];
    
    UIAlertAction *button2 = [UIAlertAction actionWithTitle:@"Cancel"
                                                      style:(UIAlertActionStyleCancel)
                                                    handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Cancel button tapped!";
        // [alert dismissViewControllerAnimated:true completion:nil];
    }];
    
    [alert addAction:button1];
    [alert addAction:button2];
    
    [self presentViewController:alert animated:true completion:nil];
}

@end
