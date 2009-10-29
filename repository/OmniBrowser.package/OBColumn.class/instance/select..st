selecting
select: aNode 
	self listHolder children keysAndValuesDo: 
		[ :i :child | 
		child = aNode ifTrue: 
			[ selection := nil.
			^ self selection: i ] ].
	self selection: nil