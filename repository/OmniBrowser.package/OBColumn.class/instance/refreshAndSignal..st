updating
refreshAndSignal: aBoolean
	| shouldSignal |
	shouldSignal := aBoolean.
	self isEmpty ifTrue: [^self].
	self listHolder refresh ifTrue:
		[self selectSilently: self selectedNode.
		self hasSelection ifFalse: 
			[shouldSignal := true]].
	shouldSignal ifTrue: [self signalSelectionChanged].
	self changed: #list