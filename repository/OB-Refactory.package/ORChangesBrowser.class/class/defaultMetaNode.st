configuration
defaultMetaNode
	| root change |
	root := OBMetaNode named: 'root'.
	change := OBMetaNode named: 'change'.
	change displaySelector: #indentedName.
	root childAt: #changes put: change.
	^ root