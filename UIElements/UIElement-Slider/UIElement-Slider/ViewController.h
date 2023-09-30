//
//  ViewController.h
//  UIElement-Slider
//
//  Created by FURKAN BINGOL on 30.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)sliderChanged:(id)sender;

@end

