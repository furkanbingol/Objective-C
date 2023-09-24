//
//  ViewController.h
//  CatApp
//
//  Created by FURKAN BINGOL on 21.09.2023.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    
    SystemSoundID soundID;
    
}

@property (weak, nonatomic) IBOutlet UILabel *meowLabel;
@property (weak, nonatomic) IBOutlet UIButton *catButton;

- (IBAction)catButtonTapped:(UIButton *)sender;

@end

