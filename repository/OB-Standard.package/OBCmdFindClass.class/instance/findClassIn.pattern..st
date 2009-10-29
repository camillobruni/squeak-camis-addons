private
findClassIn: anEnvironment pattern: pattern 
	| classNames className |
	classNames := (self 
		candidateClassesIn: anEnvironment
		pattern: pattern) ifNil: [ ^ nil ].
	className := classNames size = 1 
		ifTrue: [ classNames first ]
		ifFalse: 
			[ self 
				userSelectionOf: classNames
				for: (pattern copyWithout: $.) asLowercase ].
	^ className isNil ifFalse: [ anEnvironment at: className asSymbol ]