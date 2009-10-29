private
addChasingFiltersTo: nodes 
	(nodes at: #method)
		childAt: #senders
			put: (nodes at: #message);
		addFilter: O2ModalFilter new.
	(nodes at: #var) addFilter: O2ModalFilter new.
	(nodes at: #message)
		displaySelector: #fullName;
		childAt: #senders
			put: (nodes at: #message);
		addFilter: O2ModalFilter new