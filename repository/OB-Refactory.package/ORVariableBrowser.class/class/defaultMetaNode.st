configuration
defaultMetaNode
	| browser variable method |
	browser := OBMetaNode named: 'Environment'.
	variable := OBMetaNode named: 'Variable'.
	method := OBMetaNode named: 'Method'.
	browser
		childAt: #instanceVariables put: variable;
		childAt: #classVariables put: variable;
		addFilter: OBClassSortFilter new.
	variable
		childAt: #accessors put: method;
		displaySelector: #fullName;
		addFilter: OBClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ browser