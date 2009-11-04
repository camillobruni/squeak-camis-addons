configuration
defaultMetaNode
	| class method |
	class := O2MetaNode named: 'Class'.
	method := O2MetaNode named: 'Method'.
	class
		childAt: #methods put: method;
		addFilter: O2ClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ class