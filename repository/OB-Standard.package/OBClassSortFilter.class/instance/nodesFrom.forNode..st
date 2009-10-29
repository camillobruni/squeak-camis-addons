filtering
nodesFrom: nodes forNode: parent 
	"Sort nodes according to their position in the class hierarchy"

	| classes supersChain |
	self initializeResults.
	classes := (nodes collect: [:classNode | classNode theClass]) asOrderedCollection.
	classes ifEmpty: [^nodes].	
	nodes do: [:classNode | 
		supersChain := classNode theClass withAllSuperclasses reversed.
		supersChain removeAllSuchThat: [:cl | (classes includes: cl) not].
		order add: supersChain contents -> classNode].
	self buildIndentIndex.
	^self collectSortedNodes