//
//  ViewController.h
//  FadingUIElements
//
//  Created by FURKAN BINGOL on 28.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UISwitch *switchControl;

- (IBAction)fadeIn:(id)sender;
- (IBAction)fadeOut:(id)sender;

@end

