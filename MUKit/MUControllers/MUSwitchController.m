//
//  MUSwitchController.m
//  MUKitTest
//
//  Created by Malaar on 06.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MUSwitchController.h"

@implementation MUSwitchController

@synthesize switchDelegate;

- (void)switchToController:(UIViewController *)aController animated:(BOOL)anAnimate
{
    BOOL canSwitch = YES;
    if ([switchDelegate respondsToSelector:@selector(switchController:shouldSwitchToController:)]) {
        canSwitch = [switchDelegate switchController:self shouldSwitchToController:aController];
    }

    if (canSwitch) {
        if ([switchDelegate respondsToSelector:@selector(switchController:willSwitchToController:)]) {
            [switchDelegate switchController:self willSwitchToController:aController];
        }

        [aController willMoveToParentViewController:self];

        aController.view.frame = CGRectOffset(aController.view.frame, 0, -20);

        [self.view addSubview:aController.view];
        [self addChildViewController:aController];

        if ([switchDelegate respondsToSelector:@selector(switchController:didSwitchToController:)]) {
            [switchDelegate switchController:self didSwitchToController:aController];
        }

    }
}

@end
