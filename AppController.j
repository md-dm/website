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



    var bodyArea = [[CPView alloc] initWithFrame:CGRectInset(CGRectMake(0, 0, CGRectGetWidth([contentView bounds]), 300), 15.0, 0.0)];
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

    [detailsArea addSubview:[self createHoverViewWithFrame:CGRectInset(CGRectMake(0, 0, CGRectGetWidth([detailsArea bounds]) / 3, CGRectGetHeight([detailsArea bounds])), 10.0, 10.0)
                        titleLabel:@"What makes a great app?"
                        message:@"Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"]];


    [detailsArea addSubview:[self createHoverViewWithFrame:CGRectInset(CGRectMake(CGRectGetWidth([detailsArea bounds]) / 3, 0, CGRectGetWidth([detailsArea bounds]) / 3, CGRectGetHeight([detailsArea bounds])), 10.0, 10.0)
                        titleLabel:@"The way we work"
                        message:@"Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"]];

    [detailsArea addSubview:[self createHoverViewWithFrame:CGRectInset(CGRectMake(CGRectGetWidth([detailsArea bounds]) / 3 * 2, 0, CGRectGetWidth([detailsArea bounds]) / 3, CGRectGetHeight([detailsArea bounds])), 10.0, 10.0)
                        titleLabel:@"Meet the makers"
                        message:@"Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"]];


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
- (MDHoverView)createHoverViewWithFrame:(CGRect)aFrame titleLabel:(CPString)aTitleLabel message:(CPString)aMessage
{
    var hoverArea = [[MDHoverView alloc] initWithFrame:aFrame];

    [hoverArea setAlphaValue:0.5];
    [hoverArea setTarget:self];
    [hoverArea setAction:@selector(selectedHoverView:)];

    var titleLabel = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];
    [titleLabel setStringValue:aTitleLabel];
    [titleLabel setTextColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
    [titleLabel setAlignment:CPLeftTextAlignment];
    [titleLabel setVerticalAlignment:CPTopVerticalTextAlignment];
    [titleLabel setLineBreakMode:CPLineBreakByWordWrapping];
    [titleLabel setFont:[CPFont fontWithName:"Times New Roman" size:24.0 italic:YES]];
    [titleLabel sizeToFit];
    [titleLabel setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [hoverArea addSubview:titleLabel];

    var messageLabel = [[CPTextField alloc] initWithFrame:CGRectMake(0,CGRectGetHeight([titleLabel bounds]),CGRectGetWidth(aFrame),0)];
    [messageLabel setStringValue:aMessage];
    [messageLabel setTextColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
    [messageLabel setAlignment:CPLeftTextAlignment];
    [messageLabel setVerticalAlignment:CPTopVerticalTextAlignment];
    [messageLabel setLineBreakMode:CPLineBreakByWordWrapping];
    [messageLabel setFont:[CPFont fontWithName:"Arial" size:16.0 italic:NO]];
    [messageLabel sizeToFit];
    [messageLabel setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [hoverArea addSubview:messageLabel];

    return hoverArea;
}

- (void)selectedHoverView:(MDHoverView)aHoverView
{
    console.log(aHoverView);
    // TODO: following Mediator pattern you need to modified label colors for selected ones
    // See : https://github.com/md-dm/website/issues/4

}
@end
