accessing
refactoring
	^ SplitClassRefactoring 
		class: self currentNode theNonMetaClass
		instanceVariables: #()
		newClassName: (self request: 'Enter new class name:')
		referenceVariableName: (self request: 'Enter new variable name where requests will be forwarded:')