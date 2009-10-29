actions
implementorsOfIt
	"Open a senders browser on the selected selector"
	| selector |
	self lineSelectAndEmptyCheck: [ ^ self ].
	(selector := self selectedSelector) isNil ifTrue: [ ^ self flash ].
	self 
		send: #implementorsOfIt:
		toModelWith: {  selector  }
		orDo: [ super sendersOfIt ]