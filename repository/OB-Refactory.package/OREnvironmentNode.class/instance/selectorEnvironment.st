public
selectorEnvironment
	"Make sure that the receiver is a selector environment."
	
	| selectorEnvironment |
	selectorEnvironment := SelectorEnvironment new.
	browserEnvironment classesAndSelectorsDo: [ :class :selector |
		selectorEnvironment addClass: class selector: selector ].
	^ browserEnvironment := selectorEnvironment