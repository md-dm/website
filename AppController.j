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



@implementation AppController : CPObject
{

}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    [contentView setBackgroundColor:[CPColor colorWithRed:0.949 green:0.945 blue:0.929 alpha:1.0]];


    // var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    // [label setStringValue:@"MD-DM Web Site"];
    // [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    // [label sizeToFit];

    // [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    // [label setCenter:[contentView center]];

    // [contentView addSubview:label];


    var bodyArea = [[CPView alloc] initWithFrame:CGRectInset(CGRectMake(0, 0, CGRectGetWidth([contentView bounds]), 450), 15.0, 0.0)];
    [bodyArea setBackgroundColor:[CPColor whiteColor]];
    [contentView addSubview:bodyArea];




    var detailsArea = [[CPView alloc] initWithFrame:CGRectMake(100, 100, 300, 150)];
    [detailsArea setBackgroundColor:[CPColor grayColor]];

    [contentView addSubview:detailsArea];


    var toolbar = [[MDToolbar alloc] initWithIdentifier:"Details"];
    [toolbar setHeight:150];
    [toolbar setDelegate:[[MDToolbarDelegate alloc] init]];
    [toolbar setVisible:YES];
    [theWindow setToolbar:toolbar];
    [theWindow orderFront:self];
}
@end
