ajax
handleMessage: message
	| selector |
	selector _ message selector asSymbol.
	^ (self allowedSelectors includes: selector)
		ifTrue: [self perform: selector withArguments: message arguments. true]
		ifFalse: [false]