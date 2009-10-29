private
populateMetaclassNode
	self metaclassMetaNode
		ancestrySelector: #isDescendantOfClass:;
		childAt: #allCategory
			put: self allMethodCategoryMetaNode;
		childAt: #categories
			put: self methodCategoryMetaNode;
		autoSelect: (O2AutoSelection on: self allMethodCategoryMetaNode)