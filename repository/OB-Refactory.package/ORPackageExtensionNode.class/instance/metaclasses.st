navigating
metaclasses
	^ environment package extensionClasses collect: [ :each | each asClassSideNode ]