//
//  HomeViewController.m
//  Cashmimo
//
//  Created by Admin on 04/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "RingTableViewCell.h"
#import "WinnerTableViewCell.h"
#import "CreditTableViewCell.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //------- Add Menu Button to Navigation Bar -------------//
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setFrame:CGRectMake(0, 0, 30,30)];
    [ backButton setBackgroundImage:[UIImage imageNamed:@"menu.png"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem = back;
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"splash.png"] forBarMetrics:UIBarMetricsDefault];
    
    self.homeTableView.showsVerticalScrollIndicator=NO;
    
    self.triangleImage.frame=CGRectMake(178,54 ,20 ,10 );
    
    self.ringTableView.hidden=YES;
    self.creditTableView.hidden=YES;
    self.winnerTableView.hidden=YES;
    
    self.ringTableView.frame=CGRectMake(0, 64, 320, 120);
    self.winnerTableView.frame=CGRectMake(0, 64, 320, 60);
    self.creditTableView.frame=CGRectMake(0, 64, 320, 120);
    
    self.alertView.hidden=YES;
    self.triangleImage.hidden=YES;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1; // in your case, there are 3 cells
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.homeTableView) {
        return 4;
    }else if (tableView == self.ringTableView){
        return 2;
    }else if (tableView == self.winnerTableView){
        return 1;
    }else if (tableView == self.creditTableView){
        return 2;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.homeTableView) {
        HomeTableViewCell *cell = (HomeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"HomeCell" forIndexPath:indexPath];
        [cell.enterBtn addTarget:self action:@selector(enterAction) forControlEvents:UIControlEventTouchUpInside];
        
        return cell;
    }else if(tableView == self.ringTableView){
        RingTableViewCell * cell = (RingTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"RingCell" forIndexPath:indexPath];
        
        return cell;
    }else if(tableView == self.creditTableView){
        CreditTableViewCell * cell =(CreditTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"CreditCell" forIndexPath:indexPath];
        
        return cell;

    }else if (tableView== self.winnerTableView){
        WinnerTableViewCell * cell =(WinnerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"WinnerCell" forIndexPath:indexPath];
        
        return cell;
    }
    
    return nil;
    
}

-(void)enterAction{
    [self.alertView setHidden:NO];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self.creditTableView.hidden=YES;
    self.winnerTableView.hidden=YES;
    self.ringTableView.hidden=YES;
    self.triangleImage.hidden=YES;
}

- (IBAction)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
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

- (IBAction)ringAction:(id)sender {
//    [self.view bringSubviewToFront:self.ringTableView];
    self.triangleImage.frame=CGRectMake(178,54 ,20 ,10 );
    
    self.ringTableView.frame=CGRectMake(0, 64, 320, 120);
    
    self.triangleImage.hidden=NO;
    self.ringTableView.hidden=NO;
    self.winnerTableView.hidden=YES;
    self.creditTableView.hidden=YES;
    
}

- (IBAction)winnerAction:(id)sender {
//     [self.view bringSubviewToFront:self.winnerTableView];
    self.triangleImage.frame=CGRectMake(214,54 ,20 ,10 );
    self.winnerTableView.frame=CGRectMake(0, 64, 320, 60);
    self.winnerTableView.hidden=NO;
    self.ringTableView.hidden=YES;
    self.creditTableView.hidden=YES;
    self.triangleImage.hidden=NO;
}

- (IBAction)creditAction:(id)sender {
//    [self.view bringSubviewToFront:self.creditTableView];
    self.triangleImage.frame=CGRectMake(260,54 ,20 ,10 );
    self.creditTableView.frame=CGRectMake(0, 64, 320, 120);
    self.creditTableView.hidden=NO;
    self.winnerTableView.hidden=YES;
    self.ringTableView.hidden=YES;
    self.triangleImage.hidden=NO;
}
- (IBAction)alertPlayAction:(id)sender {
    self.alertView.hidden=YES;
}

- (IBAction)alertCloseAction:(id)sender {
    self.alertView.hidden=YES;
}
@end
