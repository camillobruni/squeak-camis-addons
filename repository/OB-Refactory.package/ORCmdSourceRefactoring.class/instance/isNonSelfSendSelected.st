testing-selection
isNonSelfSendSelected
	^ self ifSendSelected: [ :node | node receiver isVariable not or: [ node receiver name ~= 'self' ] ]