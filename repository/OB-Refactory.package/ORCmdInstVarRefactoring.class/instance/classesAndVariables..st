private
classesAndVariables: aBlock
	| variables classes |
	self halt.
	variables := self chooseMultipleFrom: self instanceVariables.
	classes := variables collect: [ :var| 
		self currentNode theClass whichClassDefinesInstVar: var.
	].
	^ aBlock value: classes value: variables