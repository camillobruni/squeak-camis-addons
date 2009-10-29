accessing
labelString
	| node |
	self columns reverseDo: [ :each |
		node := each selectedNode.
		(node notNil and: [ node title notNil ])
			ifTrue: [ ^ node title ] ].
	^ nil