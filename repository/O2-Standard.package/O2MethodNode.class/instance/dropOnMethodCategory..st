drag and drop
dropOnMethodCategory: aNode

	"We don't support dropping on another class yet."
	aNode theClass = self theClass ifFalse: [^ false].

	self theClass organization
		classify: self selector
		under: aNode category
		suppressIfDefault: false.
		
	aNode signalChildrenChanged.
	
	^ true