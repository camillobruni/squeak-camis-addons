execution
execute
	OR2ChangesBrowser displayDiffs: OR2ChangesBrowser isDisplayingDiffs not.
	self browser announce: (OBDefinitionChanged 
			node: target
			definition: target)