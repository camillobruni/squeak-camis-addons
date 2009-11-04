navigating
classes
	^ environment package extensionClasses collect: [ :each | each asO2Node ]