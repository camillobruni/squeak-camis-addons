error handling
checkSelector: selector
	(self forbiddenSelectors includes: selector )
		ifTrue: [ self error: ('Selector "', selector, '" access has been restricted! Make me mutable first!')].