*ob-refactory
withinBrowserEnvironment: anEnvironment
	^ (anEnvironment instanceVariablesFor: self theClass) includes: self name