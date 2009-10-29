private
openClassBrowser
	| classNode |
	classNode := O2ClassNode on: (Smalltalk at: pattern first asSymbol).
	^ self browser isClassBrowser 
		ifTrue: [ self browser jumpTo: classNode ]
		ifFalse: [ classNode browse ]