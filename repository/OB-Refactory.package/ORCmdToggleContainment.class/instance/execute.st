execution
execute
	| current selected |
	current := self environment.
	selected := target browserEnvironment.
	(target withinBrowserEnvironment: self environment)
		ifTrue: [ 
			selected classesAndSelectorsDo: [ :class :selector |
				current	removeClass: class selector: selector ] ]
		ifFalse: [
			selected classesAndSelectorsDo: [ :class :selector |
				current addClass: class selector: selector ] ].
	requestor refresh