configuration
defaultMetaNode
	| root cat |
	root := OBMetaNode named: 'Environment'.
	cat := OBMetaNode named: 'Class Category'.
	root childAt: #classCategories put: cat.
	cat ancestrySelector: #isDescendantOfClassCat:.
	self buildMetagraphOn: cat.
	^ root