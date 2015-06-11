//
//  ActiveGameViewController.m
//  Cashmimo
//
//  Created by Admin on 05/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ActiveGameViewController.h"
#import "HomeViewController.h"

@interface ActiveGameViewController (){
    int order;
}

@end

@implementation ActiveGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    order=0;
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
- (IBAction)orderAction:(id)sender {
    if (order==0) {
        order=1;
        [self.orderBtn setTitle:@"Low to High" forState:UIControlStateNormal];
    }else{
        order=0;
        [self.orderBtn setTitle:@"High to Low" forState:UIControlStateNormal];
        
    }
}
@end
