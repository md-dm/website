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
	console.log("(void)mouseEntered:(CPEvent)anEvent");
  // _hoverStars = 0;
  // [self _update];
  // [self _redrawHover];
}
- (void)mouseExited:(CPEvent)anEvent
{
	console.log("(void)mouseEntered:(CPEvent)anEvent");
  // _hoverStars = 0;
  // [self _update];
  // [self _redrawHover];
}

@end
