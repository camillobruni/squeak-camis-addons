configuration
defaultMetaNode
	| multi envi method |
	multi := O2MetaNode named: 'MultiEnvironment'.
	envi := O2MetaNode named: 'Environment'.
	method := O2MetaNode named: 'Method'.
	multi childAt: #environments put: envi.
	envi 
		childAt: #methods put: method;
		addFilter: O2ClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ multi