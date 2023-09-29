//
//  ViewController.h
//  RandomNumbers
//
//  Created by FURKAN BINGOL on 29.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

- (IBAction)random0100:(id)sender;
- (IBAction)random1020:(id)sender;

@end

