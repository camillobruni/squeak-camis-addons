accessing
addFactory: aCommandFactory 
	self assert: aCommandFactory notNil.
	factories add: aCommandFactory