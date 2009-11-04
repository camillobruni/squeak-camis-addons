private
add: aNode to: aCollection
	| node |
	aNode change changes do: [ :each |
		aNode change == each ifFalse: [ 
			node := each asNode setParent: aNode.
			aCollection addLast: node.
			self add: node to: aCollection ] ].
	^ aCollection