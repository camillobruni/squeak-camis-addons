navigation
metaclasses
	^ self browserEnvironment allMetaClasses collect: [ :each | each asClassSideNode ]