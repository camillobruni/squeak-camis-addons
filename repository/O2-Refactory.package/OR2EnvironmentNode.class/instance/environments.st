navigation
environments
	^ self browserEnvironment environments asSortedCollection collect: [ :label |
		self class onEnvironment: ((self browserEnvironment 
			environmentNamed: label) 
				label: label) ]