@implementation MDHoverView : CPView
{
    id                  target;
    SEL                 action;
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
// mouse movement handler
- (void)mouseDown:(CPEvent)anEvent
{
  // compute the offset relative to this frame
 	var offset = [self convertPoint:[anEvent locationInWindow] fromView:nil].x
	console.log(offset, [anEvent clickCount]);
	[self onContinousEvent:anEvent];


}

// inform the delegate about the clicked event
- (void)onContinousEvent:(CPEvent)anEvent
{
    if (target && action && [target respondsToSelector:action])
        [target performSelector:action withObject:self];
}

/*!
    Sets the receiver's target action.

    @param anAction Sets the action message that gets sent to the target.
*/
- (void)setAction:(SEL)anAction
{
    action = anAction;
}

/*!
    Returns the receiver's target action.
*/
- (SEL)action
{
    return action;
}

/*!
    Sets the receiver's target. The target receives action messages from the receiver.

    @param aTarget the object that will receive the message specified by action
*/
- (void)setTarget:(id)aTarget
{
    target = aTarget;
}

/*!
    Returns the receiver's target. The target receives action messages from the receiver.
*/
- (id)target
{
    return target;
}
@end
