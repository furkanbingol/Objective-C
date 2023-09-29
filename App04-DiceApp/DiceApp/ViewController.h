//
//  ViewController.h
//  DiceApp
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *rollButton;


- (IBAction)rollButtonTapped:(id)sender;

@end

