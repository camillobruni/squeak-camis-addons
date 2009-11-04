configuration
defaultMetaNode
	| root cat |
	root := O2MetaNode named: 'Environment'.
	cat := O2MetaNode named: 'Class Category'.
	root childAt: #classCategories put: cat.
	cat ancestrySelector: #isDescendantOfClassCat:.
	self buildMetagraphOn: cat.
	^ root