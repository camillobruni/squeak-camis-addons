as yet unclassified
label: aString target: anObject selector: aSymbol isEnabled: aBoolean
	^ (self basicNew setLabel: aString target: anObject selector: aSymbol arguments: Array new)
		isEnabled: aBoolean;
		yourself