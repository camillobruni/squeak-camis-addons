configuration
defaultMetaNode
	| version |
	version := O2MetaNode named: 'Version'.
	version ancestrySelector: #isDescendantOfMethodVersion:.
	^ (O2MetaNode named: 'Method')
		childAt: #versions
			put: version;
		yourself