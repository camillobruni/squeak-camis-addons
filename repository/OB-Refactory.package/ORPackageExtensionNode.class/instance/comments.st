navigating
comments
	^ environment package extensionClasses collect: [ :each | each asCommentNode ]