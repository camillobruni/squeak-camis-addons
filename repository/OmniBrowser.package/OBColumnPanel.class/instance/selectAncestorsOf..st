navigating
selectAncestorsOf: aNode 
	| subtree |
	subtree := OBSubtree 
		from: root
		to: aNode.
	subtree isNil ifFalse: [ self selectSubtree: subtree ]