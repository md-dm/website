/*
 * AppController.j
 * website
 *
 * Created by You on November 8, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "MDToolbar.j"
@import "MDToolbarDelegate.j"
@import "MDHoverView.j"


@implementation AppController : CPObject
{

}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];


    var dashboard = [[CPView alloc] initWithFrame:[contentView bounds]];
    [dashboard setBackgroundColor:[CPColor colorWithRed:0.949 green:0.945 blue:0.929 alpha:1.0]];



    var bodyArea = [[CPView alloc] initWithFrame:CGRectInset(CGRectMake(0, 0, CGRectGetWidth([contentView bounds]), 450), 15.0, 0.0)];
    [bodyArea setBackgroundColor:[CPColor whiteColor]];
    [dashboard addSubview:bodyArea];

    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];
    [label setStringValue:@"Digital Mining,\nBest solutions \nfor biggest problems"];
    // [label setBackgroundColor:[CPColor redColor]];
    [label setTextColor:[CPColor colorWithRed:1.0 green:0.373 blue:0.341 alpha:1.0]];
    [label setAlignment:CPLeftTextAlignment];
    [label setVerticalAlignment:CPTopVerticalTextAlignment];
    [label setLineBreakMode:CPLineBreakByWordWrapping];
    [label setFont:[CPFont boldSystemFontOfSize:80.0]];
    [label sizeToFit];
    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[bodyArea center]];

    [bodyArea addSubview:label];



    var detailsArea = [[CPView alloc] initWithFrame:CGRectInset(CGRectMake(0, CGRectGetHeight([bodyArea bounds]), CGRectGetWidth([contentView bounds]), 300), 50.0, 0.0)];
    //[detailsArea setBackgroundColor:[CPColor lightGrayColor]];

    var hoverArea = [[MDHoverView alloc] initWithFrame:CGRectInset(CGRectMake(0, 0, CGRectGetWidth([detailsArea bounds]) / 3, CGRectGetHeight([detailsArea bounds])), 10.0, 10.0)];
    [hoverArea setBackgroundColor:[CPColor grayColor]];
    [hoverArea setAlphaValue:0.5];

    [detailsArea addSubview:hoverArea];



    [dashboard addSubview:detailsArea];

    [CPScrollView setGlobalScrollerStyle:CPScrollerStyleOverlay]
    var scrollView = [[CPScrollView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([contentView bounds]), CGRectGetHeight([contentView bounds]))];
    [scrollView setAutoresizingMask: CPViewWidthSizable | CPViewHeightSizable];
    [scrollView setAutohidesScrollers:YES];
    [scrollView setDocumentView:dashboard];
    [contentView addSubview:scrollView];

    var toolbar = [[MDToolbar alloc] initWithIdentifier:"Details"];
    [toolbar setHeight:150];
    [toolbar setDelegate:[[MDToolbarDelegate alloc] init]];
    [toolbar setVisible:YES];
    [theWindow setToolbar:toolbar];
    [theWindow orderFront:self];
}
@end
