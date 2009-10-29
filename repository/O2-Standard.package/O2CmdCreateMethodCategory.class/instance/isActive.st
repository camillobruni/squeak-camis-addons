testing
isActive
	^ (requestor selectedNode isNil or: [ requestor selectedNode isKindOf: O2MethodCategoryNode ]) and: [ super isActive ]