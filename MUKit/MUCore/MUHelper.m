//
//  MUHelper.m
//  Pro-Otdyh
//
//  Created by Malaar on 24.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MUHelper.h"
#import "MUKitDefines.h"


NSDate *MUDateFromTimeStampInDictionary(NSDictionary *aDictionary, NSString *aKey) {
    NSTimeInterval timestamp = [MU_NULL_PROTECT( [aDictionary objectForKey:aKey] ) doubleValue];
    return [NSDate dateWithTimeIntervalSince1970:timestamp];
}

NSString *MUGenerateUUID() {
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    NSString *uuid = (NSString *) CFUUIDCreateString(kCFAllocatorDefault, uuidRef);
    CFRelease(uuidRef);
    return uuid;
}

NSString *MUDocumentDirectoryPath() {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

void MUHideWebViewShadows(UIWebView *webView) {
    for (UIView *subView in [webView subviews]) {
        if ([subView isKindOfClass:[UIScrollView class]]) {
            for (UIView *shadowView in [subView subviews]) {
                if ([shadowView isKindOfClass:[UIImageView class]]) {
                    [shadowView setHidden:YES];
                }
            }
        }
    }
}
