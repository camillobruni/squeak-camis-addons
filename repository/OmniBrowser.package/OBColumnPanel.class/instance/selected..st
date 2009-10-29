accessing columns
selected: aColumn 
	| next |
	(next := aColumn next) isNil
		ifFalse: [ next parent: aColumn selectedNode ]