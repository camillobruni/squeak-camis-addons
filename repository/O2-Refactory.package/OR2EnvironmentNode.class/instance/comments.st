navigation
comments
	^ self browserEnvironment allClasses collect: [ :each | each asO2CommentNode ]