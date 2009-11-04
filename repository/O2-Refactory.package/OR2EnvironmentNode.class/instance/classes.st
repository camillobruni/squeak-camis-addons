navigation
classes
	^ self browserEnvironment allNonMetaClasses collect: [ :each | each asO2Node ]