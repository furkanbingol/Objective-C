//
//  ViewController.m
//  DigitalClock
//
//  Created by FURKAN BINGOL on 30.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

bool isHidden = true;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.settingsView.hidden = isHidden;
    [self updateTime];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTime)
                                           userInfo:nil
                                            repeats:true];
}

-(void)updateTime {
    NSDateFormatter *formatter = NSDateFormatter.new;       // [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    
    self.timeLabel.text = [formatter stringFromDate:[NSDate date]];
}


- (IBAction)clockSegmentedControlTapped:(id)sender {
    const long selectedIndex = self.clockColorSegmentedControl.selectedSegmentIndex;
    
    switch (selectedIndex) {
        case 0:
            self.timeLabel.textColor = [UIColor whiteColor];
            break;
        case 1:
            self.timeLabel.textColor = [UIColor blackColor];
            break;
        case 2:
            self.timeLabel.textColor = [UIColor greenColor];
            break;
        case 3:
            self.timeLabel.textColor = [UIColor redColor];
            break;
    }
}

- (IBAction)backgroundSegmentedControlTapped:(id)sender {
    const long selectedIndex = self.backgroundColorSegmentedControl.selectedSegmentIndex;
    
    switch (selectedIndex) {
        case 0:
            self.view.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
    }
}

- (IBAction)settingsButtonTapped:(id)sender {
    isHidden = !isHidden;
    self.settingsView.hidden = isHidden;
}

@end
