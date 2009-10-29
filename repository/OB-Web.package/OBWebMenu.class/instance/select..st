callbacks
select: aString
	| item |
	item _ items 
		detect: [:ea | ea ifNil: [false] ifNotNil: [ea label = aString]] 
		ifNone: [^ self].
	item value