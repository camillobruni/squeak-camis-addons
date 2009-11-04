accessing
refactoring
	| oldMethodName newMethodName oldArguments argumentPermutation |
	oldArguments := (RBParser parseMethod: (self currentNode theClass methodHeaderFor: self currentNode selector)) argumentNames.
	oldMethodName := RBMethodName 
		selector: self currentNode selector
		arguments: oldArguments.
	(newMethodName := self requestMethodNameFor: oldMethodName) ifNil: [ ^ nil ].
	argumentPermutation := newMethodName arguments collect: [ :each | oldArguments indexOf: each ].
	^ RenameMethodRefactoring 
		renameMethod: self currentNode selector
		in: self currentNode theClass
		to: newMethodName selector
		permutation: argumentPermutation