//
//  ViewController.h
//  ObjectiveFunctions
//
//  Created by FURKAN BINGOL on 24.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)enterText:(id)sender;

- (IBAction)setColor:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)setFontSize:(id)sender;
- (IBAction)setDropShadow:(id)sender;
- (IBAction)setShadowColor:(id)sender;
- (IBAction)alignCenter:(id)sender;
- (IBAction)alignLeft:(id)sender;
- (IBAction)alignRight:(id)sender;

@end

