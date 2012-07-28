//
//  MUBaseViewController.m
//  MUKit
//
//  Created by Malaar on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MUBaseViewController.h"

@implementation MUBaseViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIImage *bgImage = [self backgroundImage];

    if (bgImage) {
        CGRect frame = self.view.bounds;
        UIImageView *backgroundView = [[[UIImageView alloc] initWithFrame:frame] autorelease];
        backgroundView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [backgroundView setImage:bgImage];
        [self.view addSubview:backgroundView];
        [self.view sendSubviewToBack:backgroundView];
    }

    if (!self.navigationItem.hidesBackButton) {
        UIBarButtonItem *leftNavigationButton = [self createLeftNavButton];
        if (leftNavigationButton) {
            if ([leftNavigationButton.customView isKindOfClass:[UIButton class]]) {
                [((UIButton *) leftNavigationButton.customView) addTarget:self action:@selector(leftNavButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
            }
            else {
                leftNavigationButton.target = self;
                leftNavigationButton.action = @selector(leftNavButtonPressed:);
            }
            self.navigationItem.leftBarButtonItem = leftNavigationButton;
        }
    }


    UIBarButtonItem *rightNavigationButton = [self createRightNavButton];
    if (rightNavigationButton) {
        if ([rightNavigationButton.customView isKindOfClass:[UIButton class]]) {
            [((UIButton *) rightNavigationButton.customView) addTarget:self action:@selector(rightNavButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        }
        else {
            rightNavigationButton.target = self;
            rightNavigationButton.action = @selector(rightNavButtonPressed:);
        }
        self.navigationItem.rightBarButtonItem = rightNavigationButton;
    }

    UIView *titleView = [self titleViewNavItem];
    if (titleView) {
        self.navigationItem.titleView = titleView;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)showAlertViewWithTitle:(NSString *)string message:(NSString *)message delegate:(void *)delegate cancelButtonTitle:(NSString *)title otherButtonTitle:(void *)title1
{

}


#pragma mark - Customization For Navigation Bar

// create custom left button for navigation bar
- (UIBarButtonItem *)createLeftNavButton
{
    return nil;
}

// create custom right button for navigation bar
- (UIBarButtonItem *)createRightNavButton
{
    return nil;
}

// create custom title view for navigation bar (return nil by default)
- (UIView *)titleViewNavItem
{
    return nil;
}

#pragma mark - Process Events

// action to process pressed-on-left-button event
- (void)leftNavButtonPressed:(id)aSender
{
    [self.navigationController popViewControllerAnimated:YES];
}

// action to process pressed-on-right-button event
- (void)rightNavButtonPressed:(id)aSender
{
}

#pragma mark - Backgraung Image

- (UIImage *)backgroundImage
{
    return nil;
}

@end
