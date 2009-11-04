execution
execute
	ORChangesBrowser displayDiffs: ORChangesBrowser isDisplayingDiffs not.
	self browser announce: (OBDefinitionChanged node: target definition: target)