comparing
= aClassOrCommentNode 
	^ (aClassOrCommentNode isKindOf: O2ClassAwareNode) and: [ self theClass = aClassOrCommentNode theClass ]