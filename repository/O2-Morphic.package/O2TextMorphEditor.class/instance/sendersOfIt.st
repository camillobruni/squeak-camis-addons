actions
sendersOfIt
	"Open a senders browser on the selected selector"

	| selector |
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSelector) == nil ifTrue: [^ self flash].
	self send: #sendersOfIt: toModelWith: {selector} orDo: [super sendersOfIt]