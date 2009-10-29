accessing
longDescriptions
	^ filter 
		ifNotNil: [filter longDescriptionsForNode: column selectedNode]
		ifNil: [#()]