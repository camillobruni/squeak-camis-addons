as yet unclassified
defaultMetaNode
	| root search |
	root := O2MetaNode named: 'root'.
	search := O2MetaNode named: 'search'.
	root 
		childAt: #children
		put: search.
	self buildMetagraphOn: search.
	^ root