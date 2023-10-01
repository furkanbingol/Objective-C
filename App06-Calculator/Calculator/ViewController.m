//
//  ViewController.m
//  Calculator
//
//  Created by FURKAN BINGOL on 1.10.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    result = 0;
    currentNumber = 0;
    currentOperation = 0;
}


- (IBAction)digitPressed:(id)sender {
    const NSInteger tag = [sender tag];
    
    currentNumber = currentNumber*10 + (float)tag;
    self.scoreLabel.text = [NSString stringWithFormat:@"%3.2f",currentNumber];
    
}


- (IBAction)cancelPressed:(id)sender {
    currentNumber = 0;
    self.scoreLabel.text = @"0.00";
}


- (IBAction)operationPressed:(id)sender {
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result += currentNumber;
                break;
            case 2:
                result -= currentNumber;
                break;
            case 3:
                result *= currentNumber;
                break;
            case 4:
                result /= currentNumber;
                break;
            default:
                break;
        }
    }
    
    currentNumber = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%3.2f",result];
    
    if ([sender tag] == 0) result = 0;
    currentOperation = (int)[sender tag];
}

@end
