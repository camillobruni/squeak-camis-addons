navigating
categories
	| categories publicCategories privateCategories |
	categories := self theClass organization categories.
	publicCategories := categories
		reject: [ :each | each beginsWith: #private ].
	privateCategories := categories
		select: [ :each | each beginsWith: #private ].
	^ publicCategories sort , privateCategories sort
		collect: [ :each | OBMethodCategoryNode on: each inClass: self theClass ]