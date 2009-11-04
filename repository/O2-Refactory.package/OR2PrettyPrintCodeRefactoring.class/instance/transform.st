transforming
transform
	| classes parsed protocols |
	classes := OrderedCollection new.
	self model allClassesDo: [ :each | classes add: each ].
	classes
		do: [ :class |
			class selectors do: [ :selector |
				(self model environment includesSelector: selector in: class realClass) ifTrue: [
					parsed := class parseTreeFor: selector.
					parsed isNil ifFalse: [ 
						protocols := class protocolsFor: selector.
						class compile: parsed formattedCode classified: protocols ] ] ] ]
		displayingProgress: 'Pretty Printing'