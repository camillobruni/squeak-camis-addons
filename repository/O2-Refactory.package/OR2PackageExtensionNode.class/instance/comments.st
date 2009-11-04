navigating
comments
	^ environment package extensionClasses collect: [ :each | each asO2CommentNode ]