private
chooseSelector
	| selectors |
	selectors := target theClass selectors asSortedArray.
	^ selectors isEmpty 
		ifTrue: [ nil ]
		ifFalse: [ O2ChoiceRequest labels: selectors ]