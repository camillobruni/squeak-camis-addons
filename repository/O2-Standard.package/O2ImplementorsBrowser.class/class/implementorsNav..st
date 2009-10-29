as yet unclassified
implementorsNav: navSelector 
	| selector message implementor |
	selector := O2MetaNode named: 'Selector'.
	message := O2MetaNode named: 'Message'.
	implementor := O2MetaNode named: 'Implementor'.
	selector
		childAt: navSelector
			put: implementor;
		addFilter: O2ClassSortFilter new.
	implementor displaySelector: #fullNameWithProtocol.
	self chasingBrowsers ifTrue: 
		[ implementor 
			childAt: #messages
			put: message.
		message 
			childAt: navSelector
			put: implementor ].
	^ selector