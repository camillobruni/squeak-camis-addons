configuration
defaultMetaNode
	| method root |
	method := O2MetaNode named: 'Method'.
	root := O2MetaNode named: 'Root'.
	root 
		childAt: #children
		put: method.
	method
		displaySelector: #fullName;
		ancestrySelector: #isDescendantOfMethod:;
		childAt: #overrides
			put: method.
	^ root