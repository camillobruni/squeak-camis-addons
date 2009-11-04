configuration
defaultMetaNode
	| class method |
	class := OBMetaNode named: 'Class'.
	method := OBMetaNode named: 'Method'.
	class
		childAt: #methods put: method;
		addFilter: OBClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ class