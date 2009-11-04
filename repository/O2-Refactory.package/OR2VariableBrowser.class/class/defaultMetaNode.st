configuration
defaultMetaNode
	| browser variable method |
	browser := O2MetaNode named: 'Environment'.
	variable := O2MetaNode named: 'Variable'.
	method := O2MetaNode named: 'Method'.
	browser
		childAt: #instanceVariables put: variable;
		childAt: #classVariables put: variable;
		addFilter: O2ClassSortFilter new.
	variable
		childAt: #accessors put: method;
		displaySelector: #fullName;
		addFilter: O2ClassSortFilter new.
	method
		displaySelector: #fullNameWithProtocol.
	^ browser