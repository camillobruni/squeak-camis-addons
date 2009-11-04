initialization
swapMethod: aSelector in: aClass
	class := self classObjectFor: aClass.
	target := self classObjectFor: (class isMeta
		ifTrue: [ class nonMetaclass ]
		ifFalse: [ class metaclass ]).
	selector := aSelector