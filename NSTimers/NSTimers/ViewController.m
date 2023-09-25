//
//  ViewController.m
//  NSTimers
//
//  Created by FURKAN BINGOL on 25.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initial state
    countInt = 0;
    self.label.text = [NSString stringWithFormat:@"%d",countInt];
}


- (IBAction)start:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTimer)
                                           userInfo:nil
                                            repeats:true];
}


- (void)updateTimer {
    countInt += 1;
    self.label.text = [NSString stringWithFormat:@"%d",countInt];
}


- (IBAction)pause:(id)sender {
    [timer invalidate];
}


- (IBAction)restart:(id)sender {
    [timer invalidate];
    countInt = 0;
    self.label.text = [NSString stringWithFormat:@"%d", countInt];
}

@end
