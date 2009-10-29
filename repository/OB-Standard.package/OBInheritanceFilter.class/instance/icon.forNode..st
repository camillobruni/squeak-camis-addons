filtering
icon: aSymbol forNode: aNode
	| method |
	method := aNode theClass lookupSelector: aNode selector.
	method ifNil: [ ^ #blank ].
	method literals do: [ :literal |
		(literal == #halt or: [ literal == #haltIfNil or: [ literal == #haltIf: or: [ literal == #haltOnce ] ] ])
			ifTrue: [ ^ #breakpoint ].
		(literal == #flag: or: [ literal == #needsWork or: [ literal == #notYetImplemented ] ])
			ifTrue: [ ^ #flag ] ].
	((aNode selector beginsWith: #test) and: [ (aNode theClass includesBehavior: TestCase) and: [ aNode theClass isAbstract not ] ])
		ifTrue: [ ^ aNode theClass browserIconFor: aNode selector ].
	^ aNode isOverride
		ifTrue: [
			aNode isOverridden
				ifTrue: [ #arrowUpAndDown ]
				ifFalse: [ #arrowUp ] ]
		ifFalse: [
			aNode isOverridden
				ifTrue: [ #arrowDown ]
				ifFalse: [ #blank ] ]