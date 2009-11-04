navigation
classProtocols
	^ self browserEnvironment allNonMetaClasses gather: [ :class | class asO2Node categories ]