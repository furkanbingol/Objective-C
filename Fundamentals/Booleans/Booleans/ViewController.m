//
//  ViewController.m
//  Booleans
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isEnable = true;
}


- (IBAction)switchTapped:(UISwitch *)sender {
    isEnable = !isEnable;
    
    if(isEnable == true) {
        self.button.enabled = true;
    } else {
        self.button.enabled = false;
    }
}


@end
