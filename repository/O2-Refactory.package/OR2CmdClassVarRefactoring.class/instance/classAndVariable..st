private
classAndVariable: aBlock
	| variable class |
	variable := self chooseFrom: self classVariables.
	class := self currentNode theNonMetaClass whichClassDefinesClassVar: variable.
	^ aBlock value: class value: variable