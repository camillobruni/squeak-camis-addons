*o2-refactory
browserInstance
	| change |
	change := CompositeRefactoryChange named: self name.
	change changes: self changes.
	^ change browserInstance