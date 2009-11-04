accessing-variables
classVariables
	| variables |
	variables := self currentNode theNonMetaClass allClassVarNames
		asSortedArray.
	^ (variables includes: self selection)
		ifTrue: [ Array with: self selection ]
		ifFalse: [ 
			(target isKindOf: OBClassVariableNode)
				ifTrue: [ Array with: target name ]
				ifFalse: [ variables ] ]