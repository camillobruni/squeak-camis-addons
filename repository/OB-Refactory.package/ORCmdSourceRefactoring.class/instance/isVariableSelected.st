testing-selection
isVariableSelected
	^ self ifNodeSelected: [ :node | node isVariable ]