private
populateMetaclassNode
	self metaclassMetaNode
		ancestrySelector: #isDescendantOfClass:;
		childAt: #allCategory put: self allMethodCategoryMetaNode;
		childAt: #categories put: self methodCategoryMetaNode;
		autoSelect: (OBAutoSelection on: self allMethodCategoryMetaNode);
		addFilter: OBClassIconFilter new