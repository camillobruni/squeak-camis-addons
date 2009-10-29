updating
addList: aListMorph
	list := aListMorph.
	self addMorph: list.
	list bounds: self innerBounds.
