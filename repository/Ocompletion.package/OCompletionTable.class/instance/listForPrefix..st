as yet unclassified
listForPrefix: aString 
	| prefix |
	aString isEmpty ifTrue: [^ OEntryList ofSize: numberofEntries].
	prefix := aString size = 1 
			ifTrue: [ aString first asLowercase asString] 
			ifFalse: [(aString first: 2) collect: [:e | e asLowercase]].
			
	^ table 
		at: prefix
		ifAbsentPut: [ OEntryList ofSize: numberofEntries ]