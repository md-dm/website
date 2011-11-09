@import <AppKit/CPToolbar.j>

/**!

	Custom implentation of CPToolbar to change heigth and background color.

*/

@implementation MDToolbar : CPToolbar
{
	int     _viewHeight;
}

- (CPView)_toolbarView
{
	if(!_viewHeight)
		_viewHeight = 59;

	if(!_toolbarView)
	{
		_toolbarView = [[_CPToolbarView alloc] initWithFrame:CPRectMake(0.0, 0.0, 1200.0, _viewHeight)];
		console.log(_toolbarView);
		[_toolbarView setBackgroundColor:[CPColor colorWithRed:0.949 green:0.945 blue:0.929 alpha:1.0]];
		[_toolbarView setToolbar:self];
		[_toolbarView setAutoresizingMask:CPViewWidthSizable];
		[_toolbarView reloadToolbarItems];
	}
	return _toolbarView;
}

- (void)setHeight:(int)aInt
{
	_viewHeight = aInt;
}

@end
