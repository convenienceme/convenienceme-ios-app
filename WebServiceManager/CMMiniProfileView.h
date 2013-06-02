//
//  CMMiniProfileView.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMMiniProfileView : UIView

@property (nonatomic, strong) IBOutlet UIView * topLevelSubview;
@property (nonatomic, strong) IBOutlet UIImageView *profileImageView;
@property (nonatomic, strong) IBOutlet UILabel * profileName;
@property (nonatomic, strong) IBOutlet UILabel * guestSince;
@property (nonatomic, strong) IBOutlet UIButton * profileButton;

- (void) setUserProfile:(NSDictionary*) userProfile;


@end
