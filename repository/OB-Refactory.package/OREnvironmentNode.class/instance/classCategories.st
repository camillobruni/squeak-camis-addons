navigation
classCategories
	^ self browserEnvironment categories collect: [ :each | OBClassCategoryNode on: each ]