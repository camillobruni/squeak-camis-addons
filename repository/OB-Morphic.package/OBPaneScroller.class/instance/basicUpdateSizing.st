private
basicUpdateSizing
	sizing := model isNil 
		ifTrue: [ 1 ]
		ifFalse: [ model sizing ]