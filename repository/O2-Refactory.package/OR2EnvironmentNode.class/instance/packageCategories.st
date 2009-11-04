navigation
packageCategories
	^ self browserEnvironment package systemCategories asArray collect: [ :each | O2ClassCategoryNode on: each ]