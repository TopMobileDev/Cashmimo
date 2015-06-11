//
//  MenuViewController.m
//  Cashmimo
//
//  Created by Admin on 04/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "MenuViewController.h"
#import "NavigationViewController.h"
#import "WinnerBoardViewController.h"
#import "AboutCashViewController.h"
#import "FeedbackViewController.h"
#import "PaymentViewController.h"
#import "GameHistoryViewController.h"
#import "ActiveGameViewController.h"
#import "AccountInfoViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.profileImage.layer.cornerRadius=39;
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

#pragma mark -
#pragma mark MenuDelegate

- (IBAction)winnerboardAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    WinnerBoardViewController * winnerController = [storyboard instantiateViewControllerWithIdentifier:@"WinnerBoardViewController"];
    navController.viewControllers = @[winnerController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
}

- (IBAction)feedbackAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    FeedbackViewController * feedbackController = [storyboard instantiateViewControllerWithIdentifier:@"FeedbackViewController"];
    navController.viewControllers = @[feedbackController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
    
}

- (IBAction)paymentAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    PaymentViewController * paymentController = [storyboard instantiateViewControllerWithIdentifier:@"PaymentViewController"];
    navController.viewControllers = @[paymentController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
}

- (IBAction)historyAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    GameHistoryViewController * historyController = [storyboard instantiateViewControllerWithIdentifier:@"GameHistoryViewController"];
    navController.viewControllers = @[historyController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
}

- (IBAction)activeGameAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    ActiveGameViewController * activeGameController = [storyboard instantiateViewControllerWithIdentifier:@"ActiveGameViewController"];
    navController.viewControllers = @[activeGameController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
}

- (IBAction)accountAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    AccountInfoViewController * accountController = [storyboard instantiateViewControllerWithIdentifier:@"AccountInfoViewController"];
    navController.viewControllers = @[accountController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
}

- (IBAction)aboutCashAction:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NavigationViewController *navController = [storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    AboutCashViewController * aboutCashController = [storyboard instantiateViewControllerWithIdentifier:@"AboutCashViewController"];
    navController.viewControllers = @[aboutCashController];
    
    self.frostedViewController.contentViewController = navController;
    [self.frostedViewController hideMenuViewController];
    
}



@end
