*ob-web
resolvePath: aCollection ifAbsent: aBlock
	| head tail child |
	head _ aCollection first.
	tail _ aCollection allButFirst.
	child _ self at: head ifAbsent: aBlock.
	^ tail isEmpty
		ifTrue: [child]
		ifFalse: [child resolvePath: tail ifAbsent: aBlock]