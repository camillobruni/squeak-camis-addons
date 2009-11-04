configuration
defaultMetaNode
	| browser protocol method |
	browser := OBMetaNode named: 'Environment'.
	protocol := OBMetaNode named: 'Protocol'.
	method := OBMetaNode named: 'Method'.
	browser
		childAt: #classProtocols labeled: 'instance' put: protocol;
		childAt: #metaclassProtocols labeled: 'class' put: protocol;
		ancestrySelector: #isDescendantOfClass:;
		addFilter: OBModalFilter new.
	protocol
		childAt: #methods put: method;
		ancestrySelector: #isDescendantOfMethodCat:.
	method
		ancestrySelector: #isDescendantOfMethod:;
		addFilter: OBInheritanceFilter new.
	^ browser