navigating
allCategories
	"Return all categories of theClass and its superclasses."
	
	| categories |
	categories := self theClass withAllSuperclasses
		inject: Set new
		into: [ :result :class | 
			result 
				addAll: class organization categories;
				yourself ].
	^ OrderedCollection new
		add: (OBAllMethodCategoryNode on: self theClass);
		addAll: (categories asSortedCollection
			collect: [ :category | OBMethodCategoryNode on: category inClass: self theClass ]);
		yourself