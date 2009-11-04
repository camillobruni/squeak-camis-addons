navigation
instanceVariables
	| classes variables |
	classes := Dictionary new.
	self browserEnvironment classesDo: [ :class |
		(self browserEnvironment instanceVariablesFor: class) do: [ :name |
			(classes
				at: (class whichClassDefinesInstVar: name)
				ifAbsentPut: [ Set new ])
					add: name ] ].
	variables := OrderedCollection new.
	classes keysAndValuesDo: [ :class :names | 
		names do: [ :name |
			variables add: (O2InstanceVariableNode on: name inClass: class) ] ].
	^ variables