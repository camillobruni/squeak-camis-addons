as yet unclassified
methodRefs
	| theClass selectors |
	theClass := receiverClass classThatDefinesInstanceVariable: variableName.
	selectors := theClass whichSelectorsStoreInto: variableName.
	^ selectors collect:[ :each | MethodReference new setStandardClass: theClass methodSymbol: each ].