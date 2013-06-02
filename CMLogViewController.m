//
//  CMLogViewController.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMLogViewController.h"
#import "RZWebServiceManager.h"
#import "RZWebServiceRequest.h"
#import "CMAppDelegate.h"

@interface CMLogViewController ()
@property (nonatomic, strong) RZWebServiceManager * webServiceManager;
@end

@implementation CMLogViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSString* path = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"WebServiceManagerCalls.plist"];
        _webServiceManager = [[RZWebServiceManager alloc] initWithCallsPath:path];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [super viewDidUnload];
}
- (IBAction)signInTapped:(id)sender {
    NSLog(@"Boom");
    
    NSString * userName = self.username.text;
    NSString * password = self.password.text;

    NSDictionary* parameters = [NSDictionary dictionaryWithObjectsAndKeys:userName, @"userName",
                                password,@"password",nil];
    
    RZWebServiceRequest* request = [[RZWebServiceRequest alloc] initWithURL:[NSURL URLWithString:@"http://convenience.cloudapp.net/con-1.0/form"]
                                                                 httpMethod:@"POST"
                                                         expectedResultType:kRZWebserviceDataTypeJSON
                                                                   bodyType:@"NONE"
                                                                 parameters:parameters
                                                                 completion:^(BOOL succeeded, id data, NSError *error, RZWebServiceRequest *request) {
                                                                     if (succeeded)
                                                                     {
                                                                         NSString * status = [data valueForKey:@"statusCd"];
                                                                         NSString * authToken = [data valueForKey:@"authToken"];
    
                                                                         if ([status isEqualToString:@"0"]) {
                                                                             [self loginFailure];
                                                                         }else{
                                                                             //Grab the auth token and persist it, for now stick hard-coded token into memory
                                                                             CMAppDelegate * appDelegate = (CMAppDelegate *) [UIApplication sharedApplication].delegate;                                                                             appDelegate.authToken = @"Boom";
                                                                             [self loginSuccesful];
                                                                         }                                                                     }
                                                                     else
                                                                     {
                                                                         NSLog(@"failure");
                                                                     }
                                                                 }];
    [self.webServiceManager enqueueRequest:request];
}

- (void) loginSuccesful{
    
    CMAppDelegate * appDelegate = (CMAppDelegate *) [UIApplication sharedApplication].delegate;                                                                            appDelegate.authToken = @"Boom";
    appDelegate.loggedInUsername = self.username.text;
    
    [self dismissModalViewControllerAnimated:YES];
}

- (void) loginFailure{
      NSLog(@"Boom");
}


#pragma  mark - UITextFieldDelegate

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
