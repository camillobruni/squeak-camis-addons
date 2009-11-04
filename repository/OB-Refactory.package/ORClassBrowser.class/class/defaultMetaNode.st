configuration
defaultMetaNode
	| root |
	root := OBMetaNode named: 'Environment'.
	^ self buildMetagraphOn: root