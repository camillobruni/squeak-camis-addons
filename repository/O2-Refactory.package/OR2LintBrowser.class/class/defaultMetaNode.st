configuration
defaultMetaNode
	| comp leaf |
	comp := OBMetaNode named: 'comp'.
	leaf := OBMetaNode named: 'leaf'.
	comp 
		childAt: #compositeRules
		put: comp.
	comp 
		childAt: #leafRules
		put: leaf.
	comp
		addFilter: OR2SortingFilter new;
		addFilter: OR2LintResultFilter new.
	leaf addFilter: OR2LintResultFilter new.
	^ comp