//
//  ViewController.h
//  DigitalClock
//
//  Created by FURKAN BINGOL on 30.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorSegmentedControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSegmentedControl;

- (IBAction)clockSegmentedControlTapped:(id)sender;
- (IBAction)backgroundSegmentedControlTapped:(id)sender;
- (IBAction)settingsButtonTapped:(id)sender;

@end

