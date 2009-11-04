filtering
nodesFrom: aCollection forNode: aNode
	^ aCollection select: [ :each | each withinBrowserEnvironment: environment ]