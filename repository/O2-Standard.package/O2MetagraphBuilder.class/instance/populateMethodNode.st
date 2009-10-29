private
populateMethodNode
	self methodMetaNode
		ancestrySelector: #isDescendantOfMethod:;
		addFilter: O2InheritanceFilter new