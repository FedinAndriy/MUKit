//
//  MUHelper.h
//  Pro-Otdyh
//
//  Created by Malaar on 24.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MUCocoaExtentions.h"

NSDate *MUDateFromTimeStampInDictionary(NSDictionary *aDictionary, NSString *aKey);

inline NSString *MUGenerateUUID();
inline NSString *MUDocumentDirectoryPath();

inline void MUHideWebViewShadows(UIWebView *webView);
