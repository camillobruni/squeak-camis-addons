navigating
categories
	^ environment organization categories collect: 
		[ :cat | 
		O2ClassCategoryNode 
			on: cat
			inEnvironment: environment ]