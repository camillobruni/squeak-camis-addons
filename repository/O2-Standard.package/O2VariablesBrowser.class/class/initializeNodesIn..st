private
initializeNodesIn: nodeDictionary 
	nodeDictionary
		at: #class
			put: (O2MetaNode named: 'Class');
		at: #var
			put: (O2MetaNode named: 'Variable');
		at: #method
			put: (O2MetaNode named: 'Method');
		at: #message
			put: (O2MetaNode named: 'Message')