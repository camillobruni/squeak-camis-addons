accessing columns
clearAfter: aColumn 
	| start |
	aColumn isNil ifTrue: [ ^ self ].
	start := (columns indexOf: aColumn) + 1.
	start 
		to: columns size
		do: [ :i | (columns at: i) clear ]