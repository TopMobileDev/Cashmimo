//
//  MenuViewController.h
//  Cashmimo
//
//  Created by Admin on 04/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"

@interface MenuViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
- (IBAction)winnerboardAction:(id)sender;
- (IBAction)feedbackAction:(id)sender;
- (IBAction)paymentAction:(id)sender;
- (IBAction)historyAction:(id)sender;
- (IBAction)activeGameAction:(id)sender;
- (IBAction)accountAction:(id)sender;

@end
