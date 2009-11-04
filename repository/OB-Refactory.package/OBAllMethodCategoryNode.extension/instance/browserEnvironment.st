*ob-refactory
browserEnvironment
	^ ClassEnvironment 
		onEnvironment: BrowserEnvironment new
		classes: (Array with: self theClass)