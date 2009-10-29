as yet unclassified
openBrowser
	| window |
	window _ OBOpenWindowRequest for: OBSystemBrowser new.
	self queueMessage: (JsonObject new
							receiver: 'id1';
							selector: 'openWindow';
							arguments: {window path};
							yourself)