column
columnAfter: aColumn selection: anInteger 
	| node |
	node := self childAt: anInteger.
	^ node isNil
		ifFalse: [node
				columnAfter: aColumn
				withFan: self
				selection: anInteger]