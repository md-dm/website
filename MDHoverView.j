@implementation MDHoverView : CPView
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
// when the mouse enters or left the view,
// we want to reset the visual hover aid.
- (void)mouseEntered:(CPEvent)anEvent
{
	// [self setBackgroundColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:1.0]];
	[self setAlphaValue:1.0];
}
- (void)mouseExited:(CPEvent)anEvent
{
	// [self setBackgroundColor:[CPColor colorWithRed:0.60 green:0.596 blue:0.678 alpha:0.5]];
	[self setAlphaValue:0.5];
}

@end
