navigating
methods
	^ self methodReferences collect: [ :ref | ref asO2Node ]