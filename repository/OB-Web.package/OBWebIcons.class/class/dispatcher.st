as yet unclassified
dispatcher
	| dispatcher inst |
	dispatcher _ Dictionary new.
	inst _ self new.
	self selectors do: 
		[:selector |
		dispatcher 
			at: selector asString 
			put: (inst perform: selector)].
	^ dispatcher