actions
requestMethodNameFor: aMethodName
	| string pattern |
	string := self 
		request: 'Selector Name:'
		initialAnswer: aMethodName asString.
	pattern := RBParser new
		errorBlock: [ :error :position | ^ nil ];
		initializeParserWith: string type: #on:errorBlock:;
		parseMessagePattern.
	^ RBMethodName
		selector: pattern selector
		arguments: pattern argumentNames