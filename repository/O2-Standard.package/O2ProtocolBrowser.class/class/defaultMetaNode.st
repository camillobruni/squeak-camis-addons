configuration
defaultMetaNode
	| protocol method class |
	class := O2MetaNode named: 'Class'.
	protocol := O2MetaNode named: 'Protocol'.
	method := O2MetaNode named: 'Method'.
	class
		ancestrySelector: #isDescendantOfClass:;
		childAt: #allCategories
			put: protocol.
	protocol
		ancestrySelector: #isDescendantOfMethodCat:;
		childAt: #allMethods
			put: method.
	method
		ancestrySelector: #isDescendantOfMethod:;
		displaySelector: #nameWithClassNameInBrackets.
	^ class