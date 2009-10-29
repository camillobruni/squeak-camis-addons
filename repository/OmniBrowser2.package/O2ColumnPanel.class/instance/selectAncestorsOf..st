navigating
selectAncestorsOf: aNode 
	| subtree |
	subtree := O2Subtree 
		from: root
		to: aNode.
	subtree ifNotNil: [ self selectSubtree: subtree ]