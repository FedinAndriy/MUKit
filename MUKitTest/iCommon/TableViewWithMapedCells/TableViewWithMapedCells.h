//
//  TableViewWithMapedCells.h
//  MUKitTest
//
//  Created by Yuriy Bosov on 4/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MUBaseViewController.h"
#import "MUTableDisposerMapped.h"
#import "MUValidationGroup.h"

@interface TableViewWithMapedCells : MUBaseViewController <MUTableDisposerDelegate>
{
    MUTableDisposerMapped * tableDisposer;
    MUValidationGroup *validationGroup;
}

@end
