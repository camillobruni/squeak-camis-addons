configuration
defaultMetaNode
	| class method sender |
	class := O2MetaNode named: 'Class'.
	method := O2MetaNode named: 'References'.
	sender := O2MetaNode named: 'Sender'.
	class 
		childAt: #users
		put: method.
	method displaySelector: #fullNameWithProtocol.
	self chasingBrowsers ifTrue: 
		[ method 
			childAt: #senders
			put: sender.
		sender
			displaySelector: #fullNameWithProtocol;
			childAt: #senders
				put: sender ].
	^ class