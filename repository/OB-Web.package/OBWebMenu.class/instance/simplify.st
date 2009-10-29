building
simplify
	items ifEmpty: [^ self].
	[items first isNil] whileTrue: [items removeFirst].
	[items last isNil] whileTrue: [items removeLast].