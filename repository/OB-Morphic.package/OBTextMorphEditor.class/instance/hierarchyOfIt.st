actions
hierarchyOfIt 
	| symbol |
	self lineSelectAndEmptyCheck: [^ self].
	(symbol := self selectedSymbol) isNil ifTrue: [^ self flash].

	self send: #hierarchyOfIt: toModelWith: {symbol} orDo: [super hierarchyOfIt]