//
//  ViewController.h
//  Booleans
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool isEnable;
}

@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)switchTapped:(UISwitch *)sender;

@end

