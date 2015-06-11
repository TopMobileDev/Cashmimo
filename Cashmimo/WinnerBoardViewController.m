//
//  WinnerBoardViewController.m
//  Cashmimo
//
//  Created by Admin on 05/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "WinnerBoardViewController.h"
#import "WinnerBoardTableViewCell.h"

@interface WinnerBoardViewController ()
{
    int order ;
}

@end

@implementation WinnerBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    order=0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1; // in your case, there are 3 cells
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WinnerBoardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WinnerCell" forIndexPath:indexPath];
    
    return cell;
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

- (IBAction)sortAction:(id)sender {
    if (order==0) {
        order=1;
        [self.sortBtn setTitle:@"Low to High" forState:UIControlStateNormal];
    }else{
        order=0;
        [self.sortBtn setTitle:@"High to Low" forState:UIControlStateNormal];
    }
}
@end
