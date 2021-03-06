user interface
clusterCommands: aCollection 
	| groups root name cluster |
	groups := IdentityDictionary new.
	root := OBCommandCluster new.
	aCollection do: 
		[ :command | 
		name := command cluster.
		cluster := name isNil 
			ifTrue: [ root ]
			ifFalse: 
				[ groups 
					at: name
					ifAbsentPut: [ command createCluster ] ].
		cluster addCommand: command ].
	groups values do: [ :ea | root addCommand: ea ].
	^ root