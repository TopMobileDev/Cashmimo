//
//  HomeViewController.h
//  Cashmimo
//
//  Created by Admin on 04/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
@interface HomeViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

- (IBAction)showMenu;
@property (weak, nonatomic) IBOutlet UITableView *homeTableView;
- (IBAction)ringAction:(id)sender;
- (IBAction)winnerAction:(id)sender;
- (IBAction)creditAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *triangleImage;
@property (weak, nonatomic) IBOutlet UITableView *ringTableView;
@property (weak, nonatomic) IBOutlet UITableView *winnerTableView;
@property (weak, nonatomic) IBOutlet UITableView *creditTableView;
@property (weak, nonatomic) IBOutlet UIView *alertView;

- (IBAction)alertPlayAction:(id)sender;
- (IBAction)alertCloseAction:(id)sender;

@end
