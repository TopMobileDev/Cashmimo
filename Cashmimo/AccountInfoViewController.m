//
//  AccountInfoViewController.m
//  Cashmimo
//
//  Created by Admin on 05/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AccountInfoViewController.h"

@interface AccountInfoViewController ()

@end

@implementation AccountInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Boolean v;
    NSLog(@"%d",v);
    
    self.profileImage.layer.cornerRadius=40;
    self.profileImage.layer.masksToBounds=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closeAction:(id)sender {
    [self performSegueWithIdentifier:@"GoHome" sender:nil];
}
@end
