//
//  ViewController.h
//  UIElement-SegmentedControl
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;


- (IBAction)changeTabsOnSegmentedControl:(id)sender;


@end

