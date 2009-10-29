*ocompletion
addSymbols: aCollection
	super addSymbols: aCollection.
	bindings 
		ifNotNil:[bindings keysDo:[ :each | aCollection add: #local -> each ]].

