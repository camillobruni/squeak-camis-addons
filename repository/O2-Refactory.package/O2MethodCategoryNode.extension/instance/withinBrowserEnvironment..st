*o2-refactory
withinBrowserEnvironment: anEnvironment
	^ self methods anySatisfy: [ :each | each withinBrowserEnvironment: anEnvironment ] 