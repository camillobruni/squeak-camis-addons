ancestry
isDescendantOfMethodCat: aMethodCatNode
	^aMethodCatNode theClass = self theClass and: [(self theClass organization categoryOfElement: self selector) = aMethodCatNode name]