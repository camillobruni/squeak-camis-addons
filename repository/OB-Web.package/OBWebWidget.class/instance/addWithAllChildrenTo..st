children
addWithAllChildrenTo: aDictionary
	aDictionary at: self identifier put: self.
	^ self addAllChildrenTo: aDictionary.
	