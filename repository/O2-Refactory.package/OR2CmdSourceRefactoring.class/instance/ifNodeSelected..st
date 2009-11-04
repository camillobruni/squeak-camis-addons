testing-private
ifNodeSelected: aBlock
	"Answer the result of evaluating aBlock with the currently selected parse tree node as argument or false, if there is no valid selection."

	| node |
	self interval isEmpty
		ifTrue: [ ^ false ].
	(node := self node) isNil
		ifTrue: [ ^ false ].
	^ aBlock value: node