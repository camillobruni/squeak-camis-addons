drawing
contentBounds
	| factor rectangle |
	factor _ ECMenuMorph messageHeight.
	rectangle _ self bounds top: self bounds top + 3.
	rectangle _ rectangle left: rectangle left + (factor * 2.0).
	rectangle _ rectangle bottom: rectangle bottom - factor. 
	^ rectangle