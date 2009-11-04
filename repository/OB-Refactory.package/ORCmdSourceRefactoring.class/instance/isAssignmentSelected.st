testing-selection
isAssignmentSelected
	^ self ifNodeSelected: [ :node | node isAssignment ]