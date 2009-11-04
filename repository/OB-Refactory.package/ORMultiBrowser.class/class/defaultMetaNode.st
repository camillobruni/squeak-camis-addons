configuration
defaultMetaNode
	| multi envi method |
	multi := OBMetaNode named: 'MultiEnvironment'.
	envi := OBMetaNode named: 'Environment'.
	method := OBMetaNode named: 'Method'.
	multi childAt: #environments put: envi.
	envi 
		childAt: #methods put: method;
		addFilter: OBClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ multi