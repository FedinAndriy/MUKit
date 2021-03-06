//
//  MUTextFieldGoup.h
//  MUKit
//
//  Created by Malaar on 10.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MUValidationGroupDelegate <NSObject>

- (void)proccessValidationResults:(NSMutableArray *)aValidationResults;

@end

@interface MUValidationGroup : NSObject
{
    NSArray *validators;
    UIImage *invalidIndicatorImage;
}

@property(nonatomic, retain) UIImage *invalidIndicatorImage;
@property(nonatomic, assign) NSObject <MUValidationGroupDelegate> *delegate;

- (id)initWithValidators:(NSArray *)aValidators;
- (NSArray *)validate;
- (void)hideInvalidIndicators;

@end
