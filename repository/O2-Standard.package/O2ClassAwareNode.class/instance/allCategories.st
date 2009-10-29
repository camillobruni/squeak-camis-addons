navigating
allCategories
	"Return all categories of theClass and its superclasses."
	| categories |
	categories := Set new.
	self theClass withAllSuperclassesDo: [ :class | categories addAll: class organization categories ].
	^ OrderedCollection new
		add: (O2AllMethodCategoryNode on: self theClass);
		addAll: (categories collect: 
				[ :cat | 
				O2MethodCategoryNode 
					on: cat
					inClass: self theClass ]);
		yourself