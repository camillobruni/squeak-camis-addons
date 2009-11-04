navigating
metaclasses
	^ environment package extensionClasses collect: [ :each | each asO2ClassSideNode ]