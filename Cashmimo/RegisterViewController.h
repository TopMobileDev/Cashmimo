//
//  RegisterViewController.h
//  Cashmimo
//
//  Created by Admin on 03/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface RegisterViewController : UIViewController <UIGestureRecognizerDelegate>

- (IBAction)logInAction:(id)sender;
- (IBAction)signUpAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *proBarImg;

//--------- Log In View ----------------------//

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *forgotPWDBtn;
- (IBAction)accountLogInAction:(id)sender;
- (IBAction)forgotAction:(id)sender;



//--------- Sign Up View --------------------//

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *signEmailField;
@property (weak, nonatomic) IBOutlet UITextField *signPWDField;
- (IBAction)createAccountAction:(id)sender;


//-------- Term View ------------------------//

- (IBAction)acceptBtnAction:(id)sender;

//--------- Main View -----------------------//

@property (weak, nonatomic) IBOutlet UIButton *helpBtn;
@property (weak, nonatomic) IBOutlet UIButton *termsBtn;
@property (weak, nonatomic) IBOutlet UIButton *privacyBtn;

@property (weak, nonatomic) IBOutlet UIView *signUpView;
@property (weak, nonatomic) IBOutlet UIView *logInView;
@property (weak, nonatomic) IBOutlet UIView *termView;

- (IBAction)termBtnAction:(id)sender;




@end
