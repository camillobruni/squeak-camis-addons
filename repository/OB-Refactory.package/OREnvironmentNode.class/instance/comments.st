navigation
comments
	^ self browserEnvironment allClasses collect: [ :each | each asCommentNode ]