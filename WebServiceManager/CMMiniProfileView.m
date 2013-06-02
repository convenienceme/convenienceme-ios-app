//
//  CMMiniProfileView.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMMiniProfileView.h"
#import <QuartzCore/QuartzCore.h>
#import "UIImageView+AFNetworking.h"

@implementation CMMiniProfileView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [[NSBundle mainBundle] loadNibNamed:@"CMMiniProfile" owner:self options:nil];
        [self addSubview:self.topLevelSubview];
        
        self.layer.cornerRadius = 5.f;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 1.0f;
        self.layer.shadowRadius = 5.0f;
        //self.layer.masksToBounds = YES;
    }
    return self;
}

- (void) setUserProfile:(NSDictionary*) userProfile{
    
    NSString * userImage = [userProfile valueForKey:@"imageURL"];
    NSString * name = [userProfile valueForKey:@"name"];
    NSString * guestSince = [userProfile valueForKey:@"guestSince"];
    
    [self.profileImageView setImageWithURL:[NSURL URLWithString:userImage] placeholderImage:[UIImage imageNamed:@"placeholder-avatar"]];
    [self.profileName setText:name];
    [self.guestSince setText:guestSince];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
