*o2-morphic
iconNamed: aSymbol
	| sel |
	aSymbol ifNil: [^ MenuIcons blankIcon].
	sel := (MenuIcons respondsTo: aSymbol)
			ifTrue: [aSymbol]
			ifFalse: [('small', aSymbol capitalized) asSymbol].
	^ MenuIcons perform: sel