//
//  CMBasementMenuViewController.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/2/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMBasementMenuViewController.h"
#import <MobCSlidingViewController/MobCSlidingViewController.h>
#import "CMPaymentsViewController.h"
#import "CMDashboardViewController.h"
#import "CMProductViewController.h"

@interface CMBasementMenuViewController ()

@end

@implementation CMBasementMenuViewController

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
    
    self.slidingViewController = (MobCSlidingViewController*) self.parentViewController;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)browseProductsTapped:(id)sender {
    UIViewController * paymentsVC = [self.slidingViewController valueForKey:@"products"];
    
    if (paymentsVC == nil) {
        UIViewController * paymentsVC1 = [[CMProductViewController alloc] init];
        paymentsVC = [[UINavigationController alloc] initWithRootViewController:paymentsVC1];
        [self.slidingViewController setValue:paymentsVC forKey:@"products"];
    }
    
    [self.slidingViewController setTopViewController:paymentsVC];
    [self.slidingViewController displayTopViewAnimated:YES];
}

- (IBAction)paymentStatementsTapped:(id)sender {
    
    UIViewController * paymentsVC = [self.slidingViewController valueForKey:@"payments"];
    
    if (paymentsVC == nil) {
        UIViewController * paymentsVC1 = [[CMPaymentsViewController alloc] init];
        paymentsVC = [[UINavigationController alloc] initWithRootViewController:paymentsVC1];
        [self.slidingViewController setValue:paymentsVC forKey:@"payments"];
    }
    
    [self.slidingViewController setTopViewController:paymentsVC];
    [self.slidingViewController displayTopViewAnimated:YES];
}

- (IBAction)dashboardButtonTapped:(id)sender {

    UIViewController * paymentsVC = [self.slidingViewController valueForKey:@"dashboard"];
    
    if (paymentsVC == nil) {
        UIViewController * paymentsVC1 = [[CMDashboardViewController alloc] init];
        paymentsVC = [[UINavigationController alloc] initWithRootViewController:paymentsVC1];
        [self.slidingViewController setValue:paymentsVC forKey:@"dashboard"];
    }
    
    [self.slidingViewController setTopViewController:paymentsVC];
    [self.slidingViewController displayTopViewAnimated:YES];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}
@end
