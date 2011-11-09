/**!

	Implementation of a toolbar delegate

*/

var SliderToolbarItemIdentifier = "SliderToolbarItemIdentifier",
    AddToolbarItemIdentifier = "AddToolbarItemIdentifier",
    RemoveToolbarItemIdentifier = "RemoveToolbarItemIdentifier";


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
   return [CPToolbarFlexibleSpaceItemIdentifier, SliderToolbarItemIdentifier, AddToolbarItemIdentifier, RemoveToolbarItemIdentifier];
}

// Return an array of toolbar item identifier (the default toolbar items that are present in the toolbar)
- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
   return [AddToolbarItemIdentifier, RemoveToolbarItemIdentifier, CPToolbarFlexibleSpaceItemIdentifier, SliderToolbarItemIdentifier];
}

- (CPToolbarItem)toolbar:(CPToolbar)aToolbar itemForItemIdentifier:(CPString)anItemIdentifier willBeInsertedIntoToolbar:(BOOL)aFlag
{
    var toolbarItem = [[CPToolbarItem alloc] initWithItemIdentifier:anItemIdentifier];

    if (anItemIdentifier == RemoveToolbarItemIdentifier)
    {
		// The toolbar is using a custom view (of class PhotoResizeView)
		var view = [[CPView alloc] initWithFrame:CGRectMake(0, 0, 180, 150)];

		[view setBackgroundColor:[CPColor blueColor]];
		[toolbarItem setView:view];

		//[toolbarItem setLabel:"Scale"];

		[toolbarItem setMinSize:CGSizeMake(180, 150)];
		[toolbarItem setMaxSize:CGSizeMake(180, 150)];

    }
    else if (anItemIdentifier == SliderToolbarItemIdentifier)
    {
        var mainBundle = [CPBundle mainBundle],
            image = [[CPImage alloc] initWithContentsOfFile:[mainBundle pathForResource:@"remove.png"] size:CPSizeMake(30, 25)],
            highlighted = [[CPImage alloc] initWithContentsOfFile:[mainBundle pathForResource:@"removeHighlighted.png"] size:CPSizeMake(30, 25)];

        [toolbarItem setImage:image];
        [toolbarItem setAlternateImage:highlighted];

        [toolbarItem setTarget:self];
        [toolbarItem setAction:@selector(remove:)];
        [toolbarItem setLabel:"Remove Photo List"];

        [toolbarItem setMinSize:CGSizeMake(64, 64)];
        [toolbarItem setMaxSize:CGSizeMake(64, 64)];
    }

    return toolbarItem;
}
@end
