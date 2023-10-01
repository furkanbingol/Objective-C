//
//  ViewController.h
//  Calculator
//
//  Created by FURKAN BINGOL on 1.10.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int currentOperation;
    float result;
    float currentNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

- (IBAction)digitPressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;

@end

