testing
isActive
	^ (requestor selectedNode isNil or: [requestor selectedNode isKindOf: OBClassCategoryNode])
		and: [super isActive]