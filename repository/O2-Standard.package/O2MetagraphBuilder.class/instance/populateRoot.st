private
populateRoot
	self root
		childAt: self classSelector
			labeled: 'instance'
			put: self classMetaNode;
		childAt: self commentSelector
			labeled: '?'
			put: self classCommentMetaNode;
		childAt: self metaclassSelector
			labeled: 'class'
			put: self metaclassMetaNode;
		addFilter: O2ModalFilter new;
		addFilter: O2ClassSortFilter new