configuration
defaultMetaNode
	| rootClass |
	rootClass := OBMetaNode named: 'root'.
	self 
		buildMetagraphOn: rootClass
		class: #classHierarchy 
		comment: #commentHierarchy 
		metaclass: #metaclassHierarchy.
	rootClass edges do: [ :each | each metaNode doubleClickSelector: #browseHierarchy ].
	^ rootClass