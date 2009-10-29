private
populateClassCommentMetaNode
	self classCommentMetaNode
		ancestrySelector: #isDescendantOfClass:;
		addFilter: OBClassIconFilter new