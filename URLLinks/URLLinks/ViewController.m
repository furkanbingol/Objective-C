//
//  ViewController.m
//  URLLinks
//
//  Created by FURKAN BINGOL on 1.10.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)buttonTapped:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://x.com/frknbngll"]
                                       options:@{}
                             completionHandler:nil];
}

@end
