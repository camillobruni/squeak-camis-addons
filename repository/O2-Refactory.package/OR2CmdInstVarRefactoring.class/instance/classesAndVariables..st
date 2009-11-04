private
classesAndVariables: aBlock
	| classes variables |
	variables := self chooseMultipleFrom: self instanceVariables.
	classes    := variables collect: [ :var|
		self currentNode theClass whichClassDefinesInstVar: var.
	].	
	self halt.
	^ aBlock value: classes value: variables