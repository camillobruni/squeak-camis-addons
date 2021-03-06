removing
removeUnmodifiedClasses
	| packageList |
	self okToChange ifFalse:[^self].
	packageList := self selectedPackage isNil
						ifTrue:[self packages] 
						ifFalse:[Array with: self selectedPackage].
	packageList do:[:package|
		package classes copy do:[:theClass|
			Cursor wait showWhile:[
				theClass removeAllUnmodified.
			].
			theClass hasChanges ifFalse:[
				package removeClass: theClass.
			].
		]].
	self classListIndex: 0.
	self changed: #classList.