navigation
protocols
	^ self browserEnvironment classes gather: [ :class | class asNode categories ]