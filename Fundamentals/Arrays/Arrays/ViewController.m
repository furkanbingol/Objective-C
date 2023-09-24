//
//  ViewController.m
//  Arrays
//
//  Created by FURKAN BINGOL on 22.09.2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Constant(Static) array --> NSArray
    NSArray *arr = @[@"Apple", @"Banana", @"Orange"];
    NSLog(@"%lu", arr.count);      // 3
    
    // Dynamic array --> NSMutableArray
    NSMutableArray *arrTwo = [[NSMutableArray alloc] initWithObjects:@"iOS", @"macOS", @"Windows", nil];
    [arrTwo addObject:@"Linux"];                  // iOS, macOS, Windows, Linux
    [arrTwo insertObject:@"Ubuntu" atIndex: 1];   // iOS, Ubuntu, macOS, Windows, Linux
    NSLog(@"%lu", arrTwo.count);   // 5
    // [arrTwo removeAllObjects];
    // [arrTwo removeObject: ];
    // [arrTwo removeObjectAtIndex: ];
    // [arrTwo insertObjects: atIndexes:];   ...
    
    
    // show on the Labels
    self.labelOne.text = arr[1];
    self.labelTwo.text = arrTwo[arrTwo.count - 1];
}


@end
