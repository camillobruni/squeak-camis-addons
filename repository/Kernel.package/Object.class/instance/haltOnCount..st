debugging-haltOnce
haltOnCount: int 
	self haltOnceEnabled
		ifTrue: [self hasHaltCount
				ifTrue: [self decrementAndCheckHaltCount
						ifTrue: [self doExpiredHaltCount]]
				ifFalse: [int = 1
						ifTrue: [self doExpiredHaltCount]
						ifFalse: [self setHaltCountTo: int - 1]]]