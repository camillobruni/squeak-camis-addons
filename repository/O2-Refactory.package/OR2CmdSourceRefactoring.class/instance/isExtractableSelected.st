testing-selection
isExtractableSelected
	^ self ifNodeSelected: [ :node | node isMethod not and: [ node isVariable not ] ]