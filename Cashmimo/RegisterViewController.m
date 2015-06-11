//
//  RegisterViewController.m
//  Cashmimo
//
//  Created by Admin on 03/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "RegisterViewController.h"
#import "Utils.h"
#import "ProgressHUD.h"


@interface RegisterViewController ()
{
    int position_flag;
}

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.signUpView.hidden=YES;
    self.termView.hidden=YES;
    
    position_flag=0;
    self.proBarImg.frame=CGRectMake(35, 104, 80, 2);
    
    [self.helpBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.termsBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.privacyBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    //---------- Log In View -----------------------------//
    
    UIView *spacerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    [self.emailTextField setLeftViewMode:UITextFieldViewModeAlways];
    [self.emailTextField setLeftView:spacerView];
    self.emailTextField.textColor=[UIColor grayColor];
    
    UIView *spacerView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    [self.passwordTextField setLeftViewMode:UITextFieldViewModeAlways];
    [self.passwordTextField setLeftView:spacerView1];
    self.passwordTextField.textColor=[UIColor grayColor];
    self.passwordTextField.secureTextEntry=YES;
    
    [self.forgotPWDBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    //-----------Sign Up View --------------------------//
    
    UIView *spacerView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    [self.nameTextField setLeftViewMode:UITextFieldViewModeAlways];
    [self.nameTextField setLeftView:spacerView2];
    self.nameTextField.textColor=[UIColor grayColor];
    
    UIView *spacerView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    [self.signEmailField setLeftViewMode:UITextFieldViewModeAlways];
    [self.signEmailField setLeftView:spacerView3];
    self.signEmailField.textColor=[UIColor grayColor];
    
    UIView *spacerView4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 40)];
    [self.signPWDField setLeftViewMode:UITextFieldViewModeAlways];
    [self.signPWDField setLeftView:spacerView4];
    self.signPWDField.textColor=[UIColor grayColor];
    self.signPWDField.secureTextEntry=YES;
    
    //---------- Term View --------------------------//
    
    self.termView.layer.borderColor=[UIColor lightGrayColor].CGColor;
    self.termView.layer.borderWidth=0.3;
    
    //---------- Tap Gesture ---------------------//
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesClicked)];
    [self.view addGestureRecognizer:tapGes];
    

}

- (void)tapGesClicked {
    
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.view.transform = CGAffineTransformIdentity;
    } completion:nil];
    [self.view endEditing:YES];
    
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
#pragma mark Log In View Delegate

- (IBAction)accountLogInAction:(id)sender {
    

    
    NSString * emailStr = self.emailTextField.text;
    NSString * pWDStr = self.passwordTextField.text;
    
    if (([Utils isEmailAddress:emailStr]) && (![pWDStr isEqualToString:@""])) {
        
        [ProgressHUD show:@"Log In"];
        
        [PFUser logInWithUsernameInBackground:emailStr password:pWDStr
                                        block:^(PFUser *user, NSError *error) {
                                            if (user) {
                                                [ProgressHUD showSuccess:@"Success"];
                                                [self performSegueWithIdentifier:@"TimeViewController" sender:nil];
                                            } else {
                                                [ProgressHUD showError:@"Try again"];
                                                self.emailTextField.text =@"";
                                                self.passwordTextField.text=@"";
                                                
                                            }
                                        }];
    }else{
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Please input correct info" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (IBAction)forgotAction:(id)sender {
    
}


#pragma mark -
#pragma mark Main View Delegate

- (IBAction)logInAction:(id)sender {
    if (position_flag==1) {
        
        position_flag=0;
        
        [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.proBarImg.frame=CGRectMake(35, 104, 80, 2);
        } completion:nil];
        
        self.logInView.hidden=NO;
        self.signUpView.hidden=YES;
        
        self.emailTextField.alpha=0.0f;
        self.passwordTextField.alpha=0.0f;
        
        [UIView animateWithDuration:0.4 delay:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.emailTextField.alpha=1.0f;
        } completion:nil];
        [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.passwordTextField.alpha=1.0f;
        } completion:nil];
    }
    
    
}

- (IBAction)signUpAction:(id)sender {
    if (position_flag==0) {
        
        position_flag=1;
        self.proBarImg.frame=CGRectMake(35, 104, 80, 2);
        
        [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.proBarImg.frame=CGRectMake(202, 104, 80, 2);
        } completion:nil];
        self.signUpView.hidden=NO;
        self.logInView.hidden=YES;
        
    }
    
    
    
}

- (IBAction)termBtnAction:(id)sender {
    self.termView.hidden=NO;
}


#pragma mark -
#pragma mark Sign Up View Delegate

- (IBAction)createAccountAction:(id)sender {
    
    NSString * nameStr = self.nameTextField.text;
    NSString * emailStr= self.signEmailField.text;
    NSString * pWDStr = self.signPWDField.text;
    
    if (([Utils isEmailAddress:emailStr]) && (![nameStr isEqualToString:@""]) && (![pWDStr isEqualToString:@""])) {
            PFUser *user = [PFUser user];
            user.username = emailStr;
            user.password = pWDStr;
            user.email = emailStr;
            user[@"name"]=nameStr;
        
        [ProgressHUD show:@"Sign Up"];
            [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
                if (!error) {
                    [ProgressHUD showSuccess:@"Success"];
                    self.signEmailField.text=@"";
                    self.nameTextField.text=@"";
                    self.signPWDField.text=@"";
                } else {
                    [ProgressHUD showError:@"Try again"];
                }
            }];
    }else{
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Please input correct info" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    
}


#pragma mark -
#pragma mark Term View Delegate

- (IBAction)acceptBtnAction:(id)sender {
    self.termView.hidden=YES;
}


@end
