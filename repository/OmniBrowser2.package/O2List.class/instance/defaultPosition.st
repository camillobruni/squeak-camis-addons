selecting
defaultPosition
	^ position class = O2Position 
		ifTrue: [ position ]
		ifFalse: [ position := O2Position new index: 1 ]