testing-selection
isSelfSendSelected
	^ self ifSendSelected: [ :node | node receiver isVariable and: [ node receiver name = 'self' ] ]