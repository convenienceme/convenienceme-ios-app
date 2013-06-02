//
//  MobCSlidingViewController.h
//  MobCSlidingViewController
//
//  Created by Eric Weglarz on 1/22/13.
//  Copyright (c) 2013 Mobiquity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**"MobCSSlidingViewController consists of three viewControllers, top, left, and right"*/
@interface MobCSlidingViewController : UIViewController {
}

/* ~~~~~ Initialize with either left or left & right views ~~~~~ */

/**"The Main ViewController."*/
@property (nonatomic, strong) UIViewController *topViewController;
/**"The ViewController that slides in from the left."*/
@property (nonatomic, strong) UIViewController *leftViewController;
/**"The ViewController that slides in from the right."*/
@property (nonatomic, strong) UIViewController *rightViewController;
/**"Returns the UIBarButtonItem that activates the leftViewController"*/
@property (nonatomic, strong) UIBarButtonItem *leftBarButtonItem;
/**"Returns the UIBarButtonItem that activates the rightViewController"*/
@property (nonatomic, strong) UIBarButtonItem *rightBarButtonItem;
/**"The number of points that the topViewController slides left to show the leftViewController"*/
@property (nonatomic, assign, readwrite) NSInteger leftViewOpenPixels;
/**"The number of points that the topViewController slides right to show the rightViewController"*/
@property (nonatomic, assign, readwrite) NSInteger rightViewOpenPixels;
/**"Show/hide the leftViewController on swipe actions"*/
@property (nonatomic, assign, readwrite)  BOOL leftViewOnSwipe;
/**"Show/hide the rightViewController on swipe actions"*/
@property (nonatomic, assign, readwrite) BOOL rightViewOnSwipe;

/* ~~~~~ Initialize with either left or left & right views ~~~~~ */
/**
 Designated initializer
 Creates a MOBCSlidingViewController object, populating with the topVC, leftVC, and rightVC. The leftVC or rightVC may be set to nil which will disable that view.
 @param topVC the top viewController
 @param leftVC the viewController that is displayed on the left side of the screen when the topViewController slides to the right
 @param rightVC the viewController that is displayed on the right side of the screen when the topViewController slides to the left.
 */
- (id)initWithTopViewController:(UIViewController *)topVC leftViewController:(UIViewController *)leftVC rightViewController:(UIViewController *)rightVC;
/**
 Creates a MOBCSlidingViewController object, populating with the topVC and leftVC. Calls the designated initializer with rightVC set to nil.
 @param topVC the top viewController
 @param leftVC the viewController that is displayed on the left side of the screen when the topViewController slides to the right
 */
- (id)initWithTopViewController:(UIViewController *)topVC leftViewController:(UIViewController *)leftVC;
/**
 Creates a MOBCSlidingViewController object, populating with the topVC and rightVC. Calls the designated initializer with rightVC set to nil.
 @param topVC the top viewController
 @param rightVC the viewController that is displayed on the right side of the screen when the topViewController slides to the left
 */
- (id)initWithTopViewController:(UIViewController *)topVC rightViewController:(UIViewController *)rightVC;

/* ~~~~~ Similar to UISplitViewController where the barButtonItem is provided to the delegate.  In this case we are creating a specific call to get the item instead of waiting for a delegate call. ~~~~~ */

/**"Returns the UIBarButtonItem that activates the leftViewController"*/
- (UIBarButtonItem *)showLeftViewBarButtonItem;
/**"Returns the UIBarButtonItem that activates the rightViewController"*/
- (UIBarButtonItem *)showRightViewBarButtonItem;


/* ~~~~~ Programmatic call to display any of the views. ~~~~~ */
/**
 Programmatically display the leftViewController if not set to nil.
 @param animated BOOL that determines if the transition to show the leftViewController is animated
 */
- (void)displayLeftViewAnimated:(BOOL)animated;
/**
 Programmatically display the right if not set to nil.
 @param animated BOOL that determines if the transition to show the rightViewController is animated
 */
- (void)displayRightViewAnimated:(BOOL)animated;
/**
 Programmatically display the topViewController.
 @param animated BOOL that determines if the transition to show the topViewController is animated
 */
- (void)displayTopViewAnimated:(BOOL)animated;

@end

