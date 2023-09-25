//
//  ViewController.m
//  TimeAndDate
//
//  Created by FURKAN BINGOL on 25.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateTimer];
    [self configureTimer];
    [self updateDate];
}


- (void)configureTimer {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTimer)
                                           userInfo:nil
                                            repeats:true];
}


- (void)updateTimer {
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"hh:mm:ss"];
    
    self.timeLabel.text = [timeFormat stringFromDate:[NSDate date]];
    // [NSDate date]: Creates and returns a new date object set to the 'current date and time.'
}


- (void)updateDate {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-YYYY"];         // mm: minutes, MM: month
    
    self.dateLabel.text = [dateFormat stringFromDate:[NSDate date]];
}


@end
