//
//  CMDashboardViewController.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMDashboardViewController.h"
#import "CMAppDelegate.h"
#import "CMDashboard.h"
#import <FacebookSDK/FacebookSDK.h>
#import <QuartzCore/QuartzCore.h>

@interface CMDashboardViewController ()

@end

@implementation CMDashboardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        NSString* path = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"WebServiceManagerCalls.plist"];
        _webServiceManager = [[RZWebServiceManager alloc] initWithCallsPath:path];
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];

}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    CMAppDelegate * appDelegate = (CMAppDelegate *) [UIApplication sharedApplication].delegate;                                                                            
    NSString *loggedInUsername = appDelegate.loggedInUsername;
    
    NSDictionary* parameters = [NSDictionary dictionaryWithObjectsAndKeys:loggedInUsername, @"userid",nil];
    
    RZWebServiceRequest* request = [[RZWebServiceRequest alloc] initWithURL:[NSURL URLWithString:@"http://convenience.cloudapp.net/con-1.0/dashboard"]
                                                                 httpMethod:@"GET"
                                                         expectedResultType:kRZWebserviceDataTypeJSON
                                                                   bodyType:@"NONE"
                                                                 parameters:parameters
                                                                 completion:^(BOOL succeeded, id data, NSError *error, RZWebServiceRequest *request) {
                                                                     if (succeeded)
                                                                     {
                                                                         self.dashboard = [[CMDashboard alloc] initWithJSON:data];
                                                                         [self dataLoaded];
                                                                     }
                                                                     else
                                                                     {
                                                                         NSLog(@"failure");
                                                                     }
                                                                 }];
    [self.webServiceManager enqueueRequest:request];
    
    
}

- (void) dataLoaded{
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)logoutButtonWasPressed:(id)sender {
    [FBSession.activeSession closeAndClearTokenInformation];
}

@end
