navigation
leafRules
	^ self rules reject: [ :each | each isComposite ]