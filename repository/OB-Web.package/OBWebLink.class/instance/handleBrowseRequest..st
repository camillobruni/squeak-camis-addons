notifications
handleBrowseRequest: request
	| window |
	window _ OBOpenWindowRequest for: request browser.
	self queueMessage: (self createMessage
							selector: #openWindow;
							arguments: {window path})