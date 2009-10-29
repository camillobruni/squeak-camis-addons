navigating
categories
	| categories privateCategories publicCategories |
	categories := (Array withAll: self theClass organization categories) sort.
	privateCategories := categories select: [ :each | each beginsWith: 'private' ].
	publicCategories := categories copyWithoutAll: privateCategories.
	^ publicCategories , privateCategories collect: 
		[ :each | 
		O2MethodCategoryNode 
			on: each
			inClass: self theClass ]