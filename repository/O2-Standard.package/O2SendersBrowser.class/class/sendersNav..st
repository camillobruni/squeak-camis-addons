configuration
sendersNav: navSelector 
	| selector sender |
	selector := O2MetaNode named: 'Selector'.
	sender := O2MetaNode named: 'Sender'.
	selector
		childAt: navSelector
			put: sender;
		addFilter: O2RescueFilter new.
	sender
		displaySelector: #fullNameWithProtocol;
		addFilter: O2RescueFilter new.
	self chasingBrowsers ifTrue: 
		[ sender 
			childAt: navSelector
			put: sender ].
	^ selector