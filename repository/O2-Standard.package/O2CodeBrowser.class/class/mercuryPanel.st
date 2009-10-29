configuration
mercuryPanel
	^ Preferences mercuryPanel 
		ifTrue: [ O2MercuryPanel new ]
		ifFalse: [ nil ]