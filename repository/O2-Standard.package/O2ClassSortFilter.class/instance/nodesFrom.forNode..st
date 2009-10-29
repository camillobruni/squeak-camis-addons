filtering
nodesFrom: nodes forNode: parent 
	"Sort nodes according to their position in the class hierarchy"
	| classes classNodes sortedNodes classInCenter supersChain |
	classNodes := nodes select: [ :ea | ea respondsTo: #theClass ].
	classNodes ifEmpty: [ ^ nodes ].
	classes := (classNodes collect: [ :classNode | classNode theClass ]) asOrderedCollection.
	
	((parent name beginsWith: 'Kernel') not and: 
		[ nodes anySatisfy: 
			[ :ea | 
			(ea respondsTo: #theClass) and: [ ea theClass = ProtoObject and: [ ea isPackage not ] ] ] ]) ifTrue: 
		[ classInCenter := (parent isKindOf: O2ClassNode) 
			ifTrue: [ parent ]
			ifFalse: [ ProtoObject asO2Node ].
		sortedNodes := (classInCenter surroundingHierarchy collect: 
			[ :class | 
			nodes 
				at: (nodes findFirst: [ :node | node theClass = class ])
				ifAbsent: [ nil ] ]) select: [ :e | e notNil ].
		self buildIndentIndexFor: sortedNodes.
		^ sortedNodes ].
	self initializeResults.
	classNodes do: 
		[ :classNode | 
		supersChain := classNode theClass withAllSuperclasses reversed.
		supersChain removeAllSuchThat: [ :cl | (classes includes: cl) not ].
		order add: supersChain contents -> classNode ].
	self buildIndentIndex.
	^ self collectSortedNodes