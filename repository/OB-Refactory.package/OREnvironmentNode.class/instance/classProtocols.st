navigation
classProtocols
	^ self browserEnvironment allNonMetaClasses gather: [ :class | class asNode categories ]