drawing
show
	| extent height |
	firstVisible _ 1.
	height _ self visibleItemsCount * self itemHeight.
	pageHeight _ self height asInteger.
	self hasMessage
		ifTrue: [height _ height + self class itemHeight].
	titleStringMorph
		ifNotNil: [height _ height max: titleStringMorph width + 30].
	extent _ self class itemWidth @ height.
	self extent: extent.
	self changed