//
//  ViewController.m
//  Strings
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    name = @"Furkan";
    NSLog(@"%@", name);
    
    NSString * helloStr = @"Hello";
    
    // self.myLabel.text = name;
    self.myLabel.text = [NSString stringWithFormat:@"%@ %@!", helloStr, name];    // Hello Furkan!
}


@end
