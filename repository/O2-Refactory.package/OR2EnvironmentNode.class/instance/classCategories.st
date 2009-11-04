navigation
classCategories
	^ self browserEnvironment categories collect: [ :each | O2ClassCategoryNode on: each ]