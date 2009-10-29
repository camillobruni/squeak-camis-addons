filtering
icon: aSymbol forNode: aNode 
	| method |
	method := aNode theClass lookupSelector: aNode selector.
	method ifNil: [ ^ #blank ].
	method literals do: 
		[ :literal | 
		(literal == #halt or: 
			[ literal == #haltIfNil or: [ literal == #haltIf: or: [ literal == #haltOnce ] ] ]) ifTrue: [ ^ #breakpoint ].
		(literal == #flag: or: [ literal == #needsWork ]) ifTrue: [ ^ #needsWork ] ].
	^ aNode isOverride 
		ifTrue: 
			[ aNode isOverridden 
				ifTrue: [ #overriddenAndOverrides ]
				ifFalse: [ #overrides ] ]
		ifFalse: 
			[ aNode isOverridden 
				ifTrue: [ #overridden ]
				ifFalse: [ #blank ] ]