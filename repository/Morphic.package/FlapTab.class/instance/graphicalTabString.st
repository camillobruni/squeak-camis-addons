graphical tabs
graphicalTabString
	^ (self isCurrentlyGraphical
		ifTrue: ['choose new graphic...']
		ifFalse: ['use graphical tab']) translated