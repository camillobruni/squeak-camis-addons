layout
resizeScrollBar
	| inner outer |
	outer := super innerBounds.
	inner := outer withHeight: outer height - self scrollBarHeight - 1.
	scrollBar bounds: ((inner left @ inner bottom + 1)
						corner: outer bottomRight)