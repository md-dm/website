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
    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"MD-DM Web Site"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

    var toolbar = [[MDToolbar alloc] initWithIdentifier:"Details"];
    [toolbar setHeight:150];
    [toolbar setDelegate:[[MDToolbarDelegate alloc] init]];
    [toolbar setVisible:YES];
    [theWindow setToolbar:toolbar];
    [theWindow orderFront:self];
}
@end
