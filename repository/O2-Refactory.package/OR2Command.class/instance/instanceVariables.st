accessing-variables
instanceVariables
	| variables |
	variables := self currentNode theClass allInstVarNames
		asSortedArray.
	^ (variables includes: self selection)
		ifTrue: [ Array with: self selection ]
		ifFalse: [
			(target isKindOf: OBInstanceVariableNode)
				ifTrue: [ Array with: target name ]
				ifFalse: [ variables ] ]