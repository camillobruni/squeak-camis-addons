accessing
environment
	| package |
	^ (super environment forPackage: (package := self package)) 
		label: package packageName