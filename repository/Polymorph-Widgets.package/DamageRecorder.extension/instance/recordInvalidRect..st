*Polymorph-Widgets-override
recordInvalidRect: newRect
	"Record the given rectangle in my damage list, a list of rectangular areas of the display that should be redraw on the next display cycle."
	"Details: Damaged rectangles are often identical or overlap significantly. In these cases, we merge them to reduce the number of damage rectangles that must be processed when the display is updated. Moreover, above a certain threshold, we ignore the individual rectangles completely, and simply do a complete repaint on the next cycle."

	| mergeRect a |
	totalRepaint ifTrue: [^ self].  "planning full repaint; don't bother collecting damage"

	invalidRects do:
		[:rect |
		((a := (rect intersect: newRect) area) > 40
			and: ["Avoid combining a vertical and horizontal rects.
				  Can make a big diff and we only test when likely."
				  a > (newRect area // 4) or: [a > (rect area // 4)]])
			ifTrue:
			["merge rectangle in place (see note below) if there is significant overlap"
			rect setOrigin: (rect origin min: newRect origin) truncated
				corner: (rect corner max: newRect corner) truncated.
			^ self]].


	invalidRects size >= 50 ifTrue:
		["if there are too many separate areas, merge them all"
		mergeRect := Rectangle merging: invalidRects.
		self reset.
		invalidRects addLast: mergeRect].

	"add the given rectangle to the damage list"
	"Note: We make a deep copy of all rectangles added to the damage list,
		since rectangles in this list may be extended in place."
	invalidRects addLast:
		(newRect topLeft truncated corner: newRect bottomRight truncated).
