navigation
protocols
	^ self browserEnvironment classes gather: [ :class | class asO2Node categories ]