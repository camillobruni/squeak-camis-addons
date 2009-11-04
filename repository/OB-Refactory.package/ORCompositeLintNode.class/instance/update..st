actions
update: anEnvironment
	self rules do: [ :each | each update: anEnvironment ].
	problemCount := self rules inject: 0 into: [ :result :each | result + each problemCount ]