//
//  GameHistoryViewController.h
//  Cashmimo
//
//  Created by Admin on 05/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameHistoryViewController : UIViewController

- (IBAction)closeAction:(id)sender;
- (IBAction)orderAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *orderBtn;

@end
