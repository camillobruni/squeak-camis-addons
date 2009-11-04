configuration
defaultMetaNode
	| comp leaf |
	comp := OBMetaNode named: 'comp'.
	leaf := OBMetaNode named: 'leaf'.
	comp childAt: #compositeRules put: comp.
	comp childAt: #leafRules put: leaf.
	comp 
		addFilter: ORSortingFilter new;
		addFilter: ORLintResultFilter new.
	leaf addFilter: ORLintResultFilter new.
	^ comp