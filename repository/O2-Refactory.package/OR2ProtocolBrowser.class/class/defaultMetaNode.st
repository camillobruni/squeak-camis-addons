configuration
defaultMetaNode
	| browser protocol method |
	browser := O2MetaNode named: 'Environment'.
	protocol := O2MetaNode named: 'Protocol'.
	method := O2MetaNode named: 'Method'.
	browser
		childAt: #protocols put: protocol;
		ancestrySelector: #isDescendantOfClass:.
	protocol
		childAt: #methods put: method;
		ancestrySelector: #isDescendantOfMethodCat:.
	method
		ancestrySelector: #isDescendantOfMethod:;
		addFilter: O2InheritanceFilter new.
	^ browser