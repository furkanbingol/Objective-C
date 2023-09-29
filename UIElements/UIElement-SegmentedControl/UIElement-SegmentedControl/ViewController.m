//
//  ViewController.m
//  UIElement-SegmentedControl
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)changeTabsOnSegmentedControl:(id)sender {
    const long selectedIndex = self.segmentedControl.selectedSegmentIndex;
    
    if(selectedIndex == 0) {
        self.label.text = @"Home";
    } else if(selectedIndex == 1) {
        self.label.text = @"Feed";
    } else {
        self.label.text = @"Settings";
    }
}


@end
