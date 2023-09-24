//
//  ViewController.m
//  CatApp
//
//  Created by FURKAN BINGOL on 21.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.meowLabel.hidden = true;
    self.catButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    // Find audio url from Main Bundle and bridge between soundURL and soundID
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}


- (IBAction)catButtonTapped:(UIButton *)sender {
    self.meowLabel.hidden = false;
    AudioServicesPlaySystemSound(soundID);      // play audio with soundID
 
    // add Timer
    [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(catDelay) userInfo:nil repeats:NO];
}


- (void)catDelay {
    self.meowLabel.hidden = true;
}


@end
