//
//  ViewController.h
//  UIElement-Switch
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *offOnLabel;
@property (weak, nonatomic) IBOutlet UISwitch *switchElement;


- (IBAction)switchTapped:(UISwitch *)sender;

@end

