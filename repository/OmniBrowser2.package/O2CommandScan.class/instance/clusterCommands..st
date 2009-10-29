user interface
clusterCommands: aCollection 
	| groups root name cluster |
	groups := IdentityDictionary new.
	root := O2CommandCluster new.
	aCollection do: 
		[ :command | 
		name := command cluster.
		cluster := name 
			ifNil: [ root ]
			ifNotNil: 
				[ groups 
					at: name
					ifAbsentPut: [ command createCluster ] ].
		cluster addCommand: command ].
	groups values do: [ :ea | root addCommand: ea ].
	^ root