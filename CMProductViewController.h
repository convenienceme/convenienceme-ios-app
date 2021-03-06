//
//  CMProductViewController.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/2/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMProductViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView * backImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)personalButtonTapped:(id)sender;
- (IBAction)householdButtonTapped:(id)sender;
- (IBAction)otherButtonTapped:(id)sender;

- (IBAction)gotol3:(id)sender;
@end
