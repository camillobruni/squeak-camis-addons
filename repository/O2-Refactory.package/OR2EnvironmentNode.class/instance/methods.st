navigation
methods
	| result |
	result := OrderedCollection new.
	self browserEnvironment classesAndSelectorsDo: [ :class :selector |
		result add: (MethodReference class: class selector: selector)
			asO2Node ].
	^ result