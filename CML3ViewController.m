//
//  CML3ViewController.m
//  ConvenienceMe
//
//  Created by Benjamin Bell on 6/2/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CML3ViewController.h"

@interface CML3ViewController ()

@end

@implementation CML3ViewController

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
    
    self.title = @"Products";
    
    [self.scrollView setContentSize:CGSizeMake(320.0, 800.0f)];
    [self.scrollView setContentOffset:CGPointMake(0.0, 0.0f)];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [super viewDidUnload];
}
@end
