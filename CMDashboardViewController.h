//
//  CMDashboardViewController.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RZWebServiceRequest.h"
#import "RZWebServiceManager.h"
#import "CMMiniAlertView.h"
#import "CMMiniProfileView.h"
#import "CMDashboard.h"
#import "CMMultiProductView.h"

@interface CMDashboardViewController : UIViewController <CMMultiProductViewDelegate>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *barButtonItem;
@property (nonatomic, strong) CMDashboard * dashboard;
@property (nonatomic, strong) RZWebServiceManager *webServiceManager;
@property (nonatomic, strong) IBOutlet CMMiniAlertView * alertView;
@property (nonatomic, strong) IBOutlet CMMiniProfileView * profileView;
@property (nonatomic, strong) IBOutlet CMMultiProductView * multiProductView;



@end
