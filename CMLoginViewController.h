//
//  CMLoginViewController.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <FacebookSDK/FacebookSDK.h>

@interface CMLoginViewController : UIViewController <UITextFieldDelegate>

//@property (nonatomic,strong) IBOutlet FBLoginView *loginView;

- (IBAction)performLogin:(id)sender;
- (void) loginFailed;

@end
