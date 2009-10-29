requests
implementorsCount
	| implementorsCount |
	implementorsCount := self systemNavigation numberOfImplementorsOf: selector.
	implementorsCount := implementorsCount == 1
				ifTrue: ['1 implementor']
				ifFalse: [implementorsCount printString , ' implementors'].
	^ implementorsCount