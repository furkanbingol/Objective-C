//
//  ViewController.m
//  DetectSwipeGestures
//
//  Created by FURKAN BINGOL on 1.10.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Left Swipe
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                               action:@selector(handleSwipe:)];
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    
    // Right Swipe
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                                action:@selector(handleSwipe:)];
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    // Up Swipe
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                             action:@selector(handleSwipe:)];
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    
    
    // Down Swipe
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                               action:@selector(handleSwipe:)];
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    
    // add GestureRecognizers
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
}


-(void)handleSwipe:(UISwipeGestureRecognizer *)sender {
    if(sender.direction == UISwipeGestureRecognizerDirectionLeft) {
        self.label.text = @"Left swiped!";
    } else if(sender.direction == UISwipeGestureRecognizerDirectionRight) {
        self.label.text = @"Right swiped!";
    } else if(sender.direction == UISwipeGestureRecognizerDirectionUp) {
        self.label.text = @"Up swiped!";
    } else if(sender.direction == UISwipeGestureRecognizerDirectionDown) {
        self.label.text = @"Down swiped!";
    }
}

@end
