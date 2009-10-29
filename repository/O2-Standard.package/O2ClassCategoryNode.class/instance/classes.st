navigating
classes
	^ self classNames collect: [ :ea | (environment at: ea) asO2Node ]