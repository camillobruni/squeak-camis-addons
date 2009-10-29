selecting
ancestorOf: aNode from: aCollection in: aBlock 
	aCollection keysAndValuesDo: 
		[ :index :node | 
		(node 
			isAncestorOf: aNode
			using: node metaNode ancestrySelector) ifTrue: 
			[ aBlock value: index.
			^ node ] ].
	^ nil