testing
isActive
	^ (target isEnvironmentNode not or: [requestor selectedNode isKindOf: OBMethodCategoryNode])
		and: [super isActive]