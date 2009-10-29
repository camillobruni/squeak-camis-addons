drawing
listItemHeight
	^ font height max: (listSource ifNotNil: [listSource listItemHeight] ifNil: [0])
