actions
update: anEnvironment
	result := rule filteredResult.
	result isSelectorEnvironment ifTrue: [
		result copy classesAndSelectorsDo: [ :class :selector |
			(anEnvironment includesSelector: selector in: class)
				ifFalse: [ result removeClass: class selector: selector ] ] ].
	problemCount := result problemCount