initialization
initializeScrollbar
	scrollBar := O2ScrollBar new 
		model: self
		slotName: 'scrollBar'.
	scrollBar
		borderWidth: 0;
		borderColor: #inset;
		height: self scrollBarHeight.
	self resizeScrollBar