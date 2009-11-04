configuration
defaultMetaNode
	| browser protocol method |
	browser := OBMetaNode named: 'Environment'.
	protocol := OBMetaNode named: 'Protocol'.
	method := OBMetaNode named: 'Method'.
	browser
		childAt: #protocols put: protocol;
		ancestrySelector: #isDescendantOfClass:.
	protocol
		childAt: #methods put: method;
		ancestrySelector: #isDescendantOfMethodCat:.
	method
		ancestrySelector: #isDescendantOfMethod:;
		addFilter: OBInheritanceFilter new.
	^ browser