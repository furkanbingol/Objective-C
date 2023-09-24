//
//  ViewController.m
//  Variables&Const
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *word1 = @"Hello";
    NSString * const constantWord1 = @"Goodbye";
    
    word1 = @"123";
    // constantWord1 = @"456";       // error, bc const!
    
    int var = 10;
    const int constantVar = 20;
}


@end
