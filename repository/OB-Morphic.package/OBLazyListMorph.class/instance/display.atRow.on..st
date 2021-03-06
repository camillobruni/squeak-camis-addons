drawing
display: item atRow: row on: canvas 
	"display the given item at row row"
	| drawBounds top icon |
	drawBounds := self drawBoundsForRow: row.
	drawBounds := drawBounds intersect: self bounds.
	(listSource iconAt: row) ifNotNilDo: 
		[ :name | 
		icon := OBMorphicIcons iconNamed: name.
		top := drawBounds top + ((drawBounds height - icon height) // 2).
		canvas 
			translucentImage: icon
			at: drawBounds left @ top.
		drawBounds := drawBounds left: drawBounds left + icon width + 2 ].
	item isText 
		ifTrue: 
			[ canvas 
				drawString: item
				in: drawBounds
				font: (font emphasized: (item emphasisAt: 1))
				color: (self colorForRow: row) ]
		ifFalse: 
			[ canvas 
				drawString: item
				in: drawBounds
				font: font
				color: (self colorForRow: row) ]