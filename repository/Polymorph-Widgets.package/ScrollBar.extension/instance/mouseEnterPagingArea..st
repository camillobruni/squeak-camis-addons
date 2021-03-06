*Polymorph-Widgets
mouseEnterPagingArea: event
	"The mouse has entered the paging area."
	
	pagingArea
		fillStyle: self mouseOverFillStyle;
		borderStyle: self mouseOverBorderStyle;
		changed.
	slider
		fillStyle: self mouseOverPagingAreaThumbFillStyle;
		borderStyle: self mouseOverPagingAreaThumbBorderStyle;
		changed.
	menuButton ifNotNil: [
		menuButton
			fillStyle: self mouseOverPagingAreaButtonFillStyle;
			borderStyle: self mouseOverPagingAreaButtonBorderStyle;
			changed].
	upButton
		fillStyle: self mouseOverPagingAreaButtonFillStyle;
		borderStyle: self mouseOverPagingAreaButtonBorderStyle;
		changed.
	downButton
		fillStyle: self mouseOverPagingAreaButtonFillStyle;
		borderStyle: self mouseOverPagingAreaButtonBorderStyle;
		changed