actions
openEnvironment: anEnvironment
	anEnvironment isSystem
		ifTrue: [ ^ target browse ].
	anEnvironment isEmpty
		ifTrue: [ ^ self inform: 'Empty environment' ].
	self waitWhile: [
		| instance |
		instance := anEnvironment browserInstance.
		[ instance jumpTo: target ] 
			ifError: [ instance jumpToRoot ].
		instance open ]