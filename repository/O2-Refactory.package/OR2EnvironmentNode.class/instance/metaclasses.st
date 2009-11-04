navigation
metaclasses
	^ self browserEnvironment allMetaClasses collect: [ :each | each asO2ClassSideNode ]