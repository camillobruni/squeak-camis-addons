*ob-refactory
withinBrowserEnvironment: anEnvironment
	^ self methods anySatisfy: [ :each | each withinBrowserEnvironment: anEnvironment ] 