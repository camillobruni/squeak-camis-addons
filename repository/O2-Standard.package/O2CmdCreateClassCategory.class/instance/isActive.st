testing
isActive
	^ (requestor selectedNode isNil or: [ requestor selectedNode isKindOf: O2ClassCategoryNode ]) and: [ super isActive ]