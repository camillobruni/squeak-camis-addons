configuration
defaultMetaNode
	| env classCategory |
	env := O2MetaNode named: 'Environment'.
	classCategory := O2MetaNode named: 'ClassCategory'.
	env 
		childAt: #categories
		put: classCategory.
	classCategory ancestrySelector: #isDescendantOfClassCat:.
	self buildMetagraphOn: classCategory.
	^ env