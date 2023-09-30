//
//  ViewController.m
//  UIElement-ActionSheet
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


- (IBAction)buttonTapped:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                   message:@"Message"
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *button1 = [UIAlertAction actionWithTitle:@"OK"
                                                      style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"OK button was tapped!";
    }];
    
    UIAlertAction *button2 = [UIAlertAction actionWithTitle:@"Cancel"
                                                      style:UIAlertActionStyleCancel
                                                    handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Cancel button was tapped!";
    }];
    
    [alert addAction:button1];
    [alert addAction:button2];
    
    [self presentViewController:alert animated:true completion:nil];      // present VC
}

@end
