actions
referencesToIt
	| selector |
	self lineSelectAndEmptyCheck: [ ^ self ].
	(selector := self selectedSelector) isNil ifTrue: [ ^ self flash ].
	self 
		send: #referencesToIt:
		toModelWith: {  selector  }
		orDo: [ super referencesToIt ]