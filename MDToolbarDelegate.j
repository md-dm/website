/**!

	Implementation of a toolbar delegate

*/

var SliderToolbarItemIdentifier = "SliderToolbarItemIdentifier",
    AddToolbarItemIdentifier = "AddToolbarItemIdentifier",
    LogoItemIdentifier = "LogoItemIdentifier";


@implementation MDToolbarDelegate : CPObject
{

}

- (id)init
{
	self = [super init]

	if (self)
	{

	}

	return self;
}

// Return an array of toolbar item identifier (all the toolbar items that may be present in the toolbar)
- (CPArray)toolbarAllowedItemIdentifiers:(CPToolbar)aToolbar
{
   return [CPToolbarFlexibleSpaceItemIdentifier, SliderToolbarItemIdentifier, AddToolbarItemIdentifier, LogoItemIdentifier];
}

// Return an array of toolbar item identifier (the default toolbar items that are present in the toolbar)
- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
   return [AddToolbarItemIdentifier, LogoItemIdentifier, CPToolbarFlexibleSpaceItemIdentifier, SliderToolbarItemIdentifier];
}

- (CPToolbarItem)toolbar:(CPToolbar)aToolbar itemForItemIdentifier:(CPString)anItemIdentifier willBeInsertedIntoToolbar:(BOOL)aFlag
{
    var toolbarItem = [[CPToolbarItem alloc] initWithItemIdentifier:anItemIdentifier];

    if (anItemIdentifier == LogoItemIdentifier)
    {
		// The toolbar is using a custom view (of class PhotoResizeView)
		var view = [[CPView alloc] initWithFrame:CGRectMake(0, 0, 300, 150)],
			field = [[CPTextField alloc] initWithFrame:CGRectMake(0,0,300,0)];


		[field setStringValue:@"DM"];
		[field setEditable:NO];
		[field setFont:[CPFont fontWithName:"American Typewriter" size:128.0]];
		[field setTextShadowColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
		[field setTextShadowOffset:CGSizeMake(10.0, 10.0)];
		[field sizeToFit];
		[view addSubview:field];

		[toolbarItem setView:view];
		[toolbarItem setMinSize:CGSizeMake(300, 150)];
		[toolbarItem setMaxSize:CGSizeMake(300, 150)];

    }
    else if (anItemIdentifier == SliderToolbarItemIdentifier)
    {
    	// The toolbar is using a custom view (of class PhotoResizeView)
		var view = [[CPView alloc] initWithFrame:CGRectMake(0, 0, 400, 150)],
			field = [[CPTextField alloc] initWithFrame:CGRectMake(0,100,100,40)],
			separatorField = [[CPTextField alloc] initWithFrame:CGRectMake(100,100,20,40)],
			knowUsField = [[CPTextField alloc] initWithFrame:CGRectMake(120,100,100,40)];

		// [view setBackgroundColor:[CPColor whiteColor]];
		// [field setBackgroundColor:[CPColor redColor]];
		// [separatorField setBackgroundColor:[CPColor blueColor]];
		// [knowUsField setBackgroundColor:[CPColor greenColor]];

		[field setStringValue:@"About Us"];
		[field setEditable:NO];
		[field setFont:[CPFont fontWithName:"Times New Roman" size:20.0 italic:YES]];
		[field setTextColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
		[view addSubview:field];

		[separatorField setStringValue:@"/"];
		[separatorField setEditable:NO];
		[separatorField setFont:[CPFont fontWithName:"Times New Roman" size:20.0 italic:YES]];
		[separatorField setTextColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
		[view addSubview:separatorField];

		[knowUsField setStringValue:@"Know Us"];
		[knowUsField setEditable:NO];
		[knowUsField setFont:[CPFont fontWithName:"Times New Roman" size:20.0 italic:YES]];
		[knowUsField setTextColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
		[view addSubview:knowUsField];

		[toolbarItem setView:view];
		[toolbarItem setMinSize:CGSizeMake(300, 150)];
		[toolbarItem setMaxSize:CGSizeMake(300, 150)];
    }

    return toolbarItem;
}
@end
