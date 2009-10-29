*o2-morphic
styleWith: aBuilder
	self vResizing = #spaceFill 
		ifTrue: [aBuilder styleVerticalDivider: self]
		ifFalse: [aBuilder styleHorizontalDivider: self]