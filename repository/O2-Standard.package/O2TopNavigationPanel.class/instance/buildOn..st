building
buildOn: aBuilder 
	^aBuilder 
		topNavigationPanel: self 
		with: [self panels do: [:panel | panel buildOn: aBuilder]]