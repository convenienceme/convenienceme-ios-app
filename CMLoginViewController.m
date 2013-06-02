//
//  CMLoginViewController.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMLoginViewController.h"
#import "CMAppDelegate.h"
#import <FacebookSDK/FacebookSDK.h>

@interface CMLoginViewController ()

@end

@implementation CMLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.loginView.readPermissions = @[@"email",@"user_likes"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performLogin:(id)sender {
    CMAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate openSession];
}



- (void)loginFailed
{
    // User switched back to the app without authorizing. Stay here, but
    // stop the spinner.
    //   [self.spinner stopAnimating];
}

@end
