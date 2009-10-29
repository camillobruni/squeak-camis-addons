updating
refresh: ann
	| selectedNode |
	self previous ifNotNilDo:  [:prev | selectedNode := prev selectedNode] ifNil: [selectedNode := panel browser root].
	(selectedNode notNil and: [ selectedNode shouldRefresh: ann])  ifTrue: [self refreshAndSignal: false ].