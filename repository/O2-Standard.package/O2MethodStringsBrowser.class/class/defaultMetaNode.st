as yet unclassified
defaultMetaNode
	| matches selection |
	selection := O2MetaNode named: 'Selection'.
	matches := O2MetaNode named: 'Methods'.
	selection 
		childAt: #methods
		put: matches.
	matches
		displaySelector: #fullName;
		ancestrySelector: #isAncestorOf:.
	^ selection