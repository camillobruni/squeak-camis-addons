*ob-refactory
withinBrowserEnvironment: anEnvironment
	^ (anEnvironment classVariablesFor: self theClass) includes: self name