private
classAndVariable: aBlock
	| variable class |
	self halt.
	variable := self chooseFrom: self instanceVariables.
	class     := self currentNode theClass whichClassDefinesInstVar: variable.
	^ aBlock value: class value: variable