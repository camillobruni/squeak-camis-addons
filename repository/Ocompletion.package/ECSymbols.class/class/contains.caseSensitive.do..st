as yet unclassified
contains: aString caseSensitive: aBoolean do: aBlock 
	Symbol allSymbolTablesDo: 
		[ :each | 
		(each 
			includesSubstring: aString
			caseSensitive: aBoolean) ifTrue: [ aBlock value: each ] ]