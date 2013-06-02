//
//  CMMultiProductView.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
#import "CMSingleProductView.h"

@class CMMultiProductView;

@protocol CMMultiProductViewDelegate <NSObject>
@optional
- (void) hideDashboard:(CMMultiProductView *) multiProductView;
@end


@interface CMMultiProductView : UIView <iCarouselDataSource, iCarouselDelegate, CMSingleProductViewDelegate>

@property (nonatomic, weak) IBOutlet id<CMMultiProductViewDelegate> delegate;
@property (nonatomic, strong) IBOutlet UIView * topLevelSubview;
@property (nonatomic, strong) NSMutableArray * productList;
@property (nonatomic, strong) IBOutlet iCarousel* carousel;

- (void) setProducts:(NSArray *) products;

@end
