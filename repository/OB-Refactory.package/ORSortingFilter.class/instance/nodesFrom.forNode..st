filtering
nodesFrom: nodes forNode: parent
	^ nodes asSortedCollection: [ :a :b | a name < b name ]