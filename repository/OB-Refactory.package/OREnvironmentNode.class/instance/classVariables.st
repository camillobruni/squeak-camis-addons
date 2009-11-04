navigation
classVariables
	| classes variables |
	classes := Dictionary new.
	self browserEnvironment classesDo: [ :class |
		(self browserEnvironment classVariablesFor: class) do: [ :name |
			(classes
				at: ((class whichClassDefinesClassVar: name)
					ifNil: [ class whichSuperclassSatisfies: [ :each | each poolDictionaryNames includes: name ] ])
				ifAbsentPut: [ Set new ])
					add: name ] ].
	variables := OrderedCollection new.
	classes keysAndValuesDo: [ :class :names | 
		names do: [ :name |
			variables add: (OBClassVariableNode on: name inClass: class) ] ].
	^ variables