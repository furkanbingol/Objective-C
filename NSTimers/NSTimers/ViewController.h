//
//  ViewController.h
//  NSTimers
//
//  Created by FURKAN BINGOL on 25.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int countInt;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)start:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)restart:(id)sender;

@end
