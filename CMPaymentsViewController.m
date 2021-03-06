//
//  CMPaymentsViewController.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/2/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMPaymentsViewController.h"
#import <MobCSlidingViewController/MobCSlidingViewController.h>

@interface CMPaymentsViewController ()

@end

@implementation CMPaymentsViewController

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
    
    self.title = @"Payments";
    
    UIScrollView * scrollView = (UIScrollView *) self.view;
    [scrollView setContentSize:CGSizeMake(320.0, 720.0f)];
    [scrollView setContentOffset:CGPointMake(0.0, 0.0f)];
    
    UIBarButtonItem *flipButton = [[UIBarButtonItem alloc]
                                   initWithImage:[UIImage imageNamed:@"Menu-button.png"] style:UIBarButtonItemStylePlain target:self action:@selector(slideLeft)];
    self.navigationItem.leftBarButtonItem = flipButton;
}

- (void) slideLeft
{
    UINavigationController * navController = (UINavigationController *)self.parentViewController;
    MobCSlidingViewController * slidingViewController = (MobCSlidingViewController*)
    navController.parentViewController;
    [slidingViewController displayLeftViewAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
