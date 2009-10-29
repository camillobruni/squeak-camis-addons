as yet unclassified
selection
	| selection |
	selection _ model selection.
	^ selection = 0
		ifTrue: [nil]
		ifFalse: [selection - 1]