navigation
packageCategories
	^ self browserEnvironment package systemCategories asArray collect: [ :each | OBClassCategoryNode on: each ]