//
//  MUViewControllerIPhone.m
//  MUKit
//
//  Created by Yuriy Bosov on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MURootControllerIPhone.h"
#import "MUKit.h"
#import "TableViewWithMapedCells.h"

@implementation MURootControllerIPhone
@synthesize popupPressed;
@synthesize ivTapable;


- (id)init
{
    self = [super initWithNibName:@"MURootControllerIPhone" bundle:nil];
    if (self) 
    {
        self.title = @"Root";
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)loadView
{
    [super loadView];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [ivTapable addTarget:self action:@selector(imageTapped:)];
    NSURL* imgURL = [NSURL URLWithString:@"http://d1xzuxjlafny7l.cloudfront.net/wp-content/uploads/2011/03/MapsSmall.jpg"];
    [ivTapable setImageWithURL:imgURL];
}


- (void)viewDidUnload
{
    [self setIvTapable:nil];
    [self setPopupPressed:nil];
    [super viewDidUnload];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark - Button Action

- (IBAction)showKeyboardAvoidingScrollView:(id)sender 
{

}


- (IBAction)showKeyboardAvoidingTableView:(id)sender 
{

}


- (IBAction)showTableDisposerController:(id)sender
{
    TableViewWithMapedCells *vc = [[TableViewWithMapedCells new] autorelease];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)switchController:(id)sender
{
    TableViewWithMapedCells *vc = [[TableViewWithMapedCells new] autorelease];
    UINavigationController* nc = [[[UINavigationController alloc] initWithRootViewController:vc] autorelease];

    NSLog(@"Switch Pressed");
}


- (void)dealloc
{
    [ivTapable release];

    [popupPressed release];
    [super dealloc];
}


- (void) imageTapped:(UIImage*)anImage
{

}


- (IBAction)popupPressed:(id)sender
{
    MUPopupDatePicker* datePicker = [[MUPopupDatePicker alloc] init];
    datePicker.showOverlayView = YES;
//    datePicker.toolbar = [MUToolbar new];
    [datePicker prepareToShow];
    [datePicker showWithAnimation:YES inView:self.view];
}

@end
