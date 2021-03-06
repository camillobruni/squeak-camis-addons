current selection
selectAndScroll
	"Scroll until the selection is in the view and then highlight it."
	| lineHeight deltaY clippingRectangle endBlock |
	self select.
	endBlock := self stopBlock.
	lineHeight := paragraph textStyle lineGrid.
	clippingRectangle := paragraph clippingRectangle.
	deltaY := endBlock top - clippingRectangle top.
	deltaY >= 0 
		ifTrue: [deltaY := endBlock bottom - clippingRectangle bottom max: 0].
						"check if stopIndex below bottom of clippingRectangle"
	deltaY ~= 0 
		ifTrue: [self scrollBy: (deltaY abs + lineHeight - 1 truncateTo: lineHeight)
									* deltaY sign]