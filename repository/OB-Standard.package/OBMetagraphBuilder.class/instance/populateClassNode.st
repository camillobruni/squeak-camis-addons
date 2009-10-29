private
populateClassNode
	self classMetaNode
		ancestrySelector: #isDescendantOfClass:;
		childAt: #allCategory put: self allMethodCategoryMetaNode;
		childAt: #categories put: self methodCategoryMetaNode;
		autoSelect: (OBAutoSelection on: self allMethodCategoryMetaNode);
		addFilter: OBClassIconFilter new