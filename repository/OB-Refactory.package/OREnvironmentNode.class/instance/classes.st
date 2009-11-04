navigation
classes
	^ self browserEnvironment allNonMetaClasses collect: [ :each | each asNode ]