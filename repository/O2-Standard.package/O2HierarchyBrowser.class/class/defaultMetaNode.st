configuration
defaultMetaNode
	^ self 
		buildMetagraphOn: (O2MetaNode named: 'RootClass')
		class: #classHierarchy
		comment: #commentHierarchy
		metaclass: #metaclassHierarchy