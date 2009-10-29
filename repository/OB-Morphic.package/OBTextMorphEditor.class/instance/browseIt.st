actions
browseIt
	| symbol |
	self lineSelectAndEmptyCheck: [^ self].
	(symbol := self selectedSymbol) isNil ifTrue: [^ self flash].

	self send: #browseIt: toModelWith: {symbol} orDo: [super browseIt]