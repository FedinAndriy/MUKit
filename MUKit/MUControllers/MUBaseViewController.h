//
//  MUBaseViewController.h
//  MUKit
//
//  Created by Malaar on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MUAutoresizeButton.h"
#import "MUCocoaExtentions.h"

@class MUSpinneredView;

@interface MUBaseViewController : UIViewController

- (UIBarButtonItem *)createLeftNavButton;       ///< create custom left button for navigation bar (returned object must be autoreleased!)
- (UIBarButtonItem *)createRightNavButton;      ///< create custom right button for navigation bar (return nil by default). (returned object must be autoreleased!)
- (UIView *)titleViewNavItem;                   ///< create custom title view for navigation bar (return nil by default)

- (void)leftNavButtonPressed:(id)aSender;      ///< action to process pressed-on-left-button event
- (void)rightNavButtonPressed:(id)aSender;     ///< action to process pressed-on-right-button event
- (UIImage *)backgroundImage;

- (void)showAlertViewWithTitle:(NSString *)string
                       message:(NSString *)message
                      delegate:(void *)delegate
             cancelButtonTitle:(NSString *)title
              otherButtonTitle:(void *)title1;

@end
