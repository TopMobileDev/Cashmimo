//
//  WinnerBoardViewController.h
//  Cashmimo
//
//  Created by Admin on 05/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WinnerBoardViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

- (IBAction)closeAction:(id)sender;
- (IBAction)sortAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *sortBtn;

@end
