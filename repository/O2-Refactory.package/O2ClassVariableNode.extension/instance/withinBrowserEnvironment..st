*o2-refactory
withinBrowserEnvironment: anEnvironment
	^ (anEnvironment classVariablesFor: self theClass) includes: self name