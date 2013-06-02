//
//  CMBasementMenuViewController.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/2/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobCSlidingViewController/MobCSlidingViewController.h>

@interface CMBasementMenuViewController : UIViewController

@property (nonatomic,strong) MobCSlidingViewController * slidingViewController;

- (IBAction)browseProductsTapped:(id)sender;
- (IBAction)paymentStatementsTapped:(id)sender;
- (IBAction)dashboardButtonTapped:(id)sender;


@end
