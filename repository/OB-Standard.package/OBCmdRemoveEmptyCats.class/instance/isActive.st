testing
isActive
	^ super isActive and: [ (requestor selectedNode isKindOf: OBMethodCategoryNode) or: [ requestor selectedNode isKindOf: OBClassCategoryNode ] ]