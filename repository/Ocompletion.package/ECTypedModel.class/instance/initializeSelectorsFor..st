private
initializeSelectorsFor: aClass 
	|excludedClasses|
	selectors reset.
	excludedClasses := (expanded ifTrue: [#()] ifFalse: [Object class withAllSuperclasses]).
	selectors addAll: ((aClass allSelectorsForCompletionWithout: excludedClasses)
						collect: [:each | ECSelectorEntry contents: each type: #selector])