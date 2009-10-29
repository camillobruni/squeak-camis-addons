instance creation
current
	^ Current ifNil: [self default]