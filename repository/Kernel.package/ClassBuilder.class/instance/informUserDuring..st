private
informUserDuring: aBlock 
	self class isSilent ifTrue: [ ^ aBlock value ].
	UIManager default informUserDuring: 
		[ :bar | 
		progress := bar.
		aBlock value ].
	progress := nil