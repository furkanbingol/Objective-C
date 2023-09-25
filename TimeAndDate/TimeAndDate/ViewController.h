//
//  ViewController.h
//  TimeAndDate
//
//  Created by FURKAN BINGOL on 25.09.2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
