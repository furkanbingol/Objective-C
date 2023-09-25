//
//  ViewController.m
//  FancyText
//
//  Created by FURKAN BINGOL on 24.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    shadowState = false;
    fontSize = 22;
    
    // TextField configurations
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
}


- (IBAction)enterText:(id)sender {
    self.label.text = self.textField.text;
}

- (IBAction)red:(id)sender {
    self.label.textColor = UIColor.systemRedColor;
}

- (IBAction)blue:(id)sender {
    self.label.textColor = UIColor.systemBlueColor;
}

- (IBAction)green:(id)sender {
    // spesific color
    self.label.textColor = [UIColor colorWithRed:0.0/250.0
                                           green:124.0/250.0
                                            blue:29.0/250.0
                                           alpha:1.0];
}

- (IBAction)font1:(id)sender {
    // First, add 'spesific fonts' to Info.plist (Fonts provided by application).
    [self.label setFont:[UIFont fontWithName:@"Verdana"
                                        size:fontSize]];
    
}

- (IBAction)font2:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"LemonMilk"
                                        size:fontSize]];
}

- (IBAction)font3:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Moon Flower"
                                        size:fontSize]];
}

- (IBAction)font4:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"SugarstyleMillenial-Regular"
                                        size:fontSize]];
}

- (IBAction)shadow:(id)sender {
    shadowState = !shadowState;
    
    if(shadowState) {
        self.label.layer.shadowColor = [[UIColor  blackColor] CGColor];
        self.label.layer.shadowOpacity = 0.4;
        self.label.layer.shadowRadius = 1.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        
        [self.shadowButton setTitle:@"No shadow" forState:UIControlStateNormal];
    } else {
        self.label.layer.shadowOpacity = 0;
        
        [self.shadowButton setTitle:@"Shadow" forState:UIControlStateNormal];
    }
}

- (IBAction)small:(id)sender {
    fontSize = 22;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)medium:(id)sender {
    fontSize = 40;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)large:(id)sender {
    fontSize = 60;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

@end
