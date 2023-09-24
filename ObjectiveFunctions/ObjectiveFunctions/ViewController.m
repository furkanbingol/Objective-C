//
//  ViewController.m
//  ObjectiveFunctions
//
//  Created by FURKAN BINGOL on 24.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = @"Label text changed!";
    self.textView.text = @"TextView text changed!";
    self.textView.delegate = self;
    
    [self configureTextField];
}

- (void)configureTextField {
    self.textField.placeholder = @"Enter a name";
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
}


// textField "Did End on Exit" action
- (IBAction)enterText:(id)sender {
    self.label.text = self.textField.text;
}


// textView delegate function
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return true;
    }
    
    [textView resignFirstResponder];       // for keyboard dismiss
    return false;
}


// MARK: - Changing Text Properties on Label
- (IBAction)alignRight:(id)sender {
    self.label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)alignLeft:(id)sender {
    self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)alignCenter:(id)sender {
    self.label.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)setShadowColor:(id)sender {
    self.label.layer.shadowColor = [[UIColor systemBlueColor] CGColor];
}

- (IBAction)setDropShadow:(id)sender {
    self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 10.0;
    self.label.layer.shadowOffset = CGSizeMake(5, 5);
}

- (IBAction)setFontSize:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Verdana" size:30]];
}

- (IBAction)setBackground:(id)sender {
    self.label.backgroundColor = UIColor.systemYellowColor;
}

- (IBAction)setColor:(id)sender {
    self.label.textColor = UIColor.systemRedColor;
    // -- OR --
    // self.label.textColor = [UIColor systemRedColor];
}

@end
