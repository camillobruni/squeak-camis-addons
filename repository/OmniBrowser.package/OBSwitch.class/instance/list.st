as yet unclassified
list
	^ filter isNil 
		ifFalse: [ filter listForNode: column selectedNode ]
		ifTrue: 
			[ #() ]