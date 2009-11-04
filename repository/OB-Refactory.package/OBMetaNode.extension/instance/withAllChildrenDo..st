*ob-refactory
withAllChildrenDo: aBlock
	self withAllChildrenDo: aBlock seen: IdentitySet new