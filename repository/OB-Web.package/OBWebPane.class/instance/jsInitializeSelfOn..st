as yet unclassified
jsInitializeSelfOn: aStream
	self jsWidgetAccessorOn: aStream.
	model wantsButton
		ifTrue: [aStream nextPutAll: '.showSwitch();']
		ifFalse: [aStream nextPutAll: '.hideSwitch();']