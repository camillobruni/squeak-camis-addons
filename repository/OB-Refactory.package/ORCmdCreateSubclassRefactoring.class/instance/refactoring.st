accessing
refactoring
	| class subclassName |
	class := self currentNode theNonMetaClass.
	subclassName := self request: 'Enter new subclass name:'.
	^ AddClassRefactoring 
		addClass: subclassName
		superclass: class
		subclasses: ((OBMultipleChoiceRequest 
			prompt: 'Select subclasses of ' , subclassName , ':'
			labels: (class subclasses collect: [ :each | each name ])
			values: class subclasses)
			ifNil: [ ^ nil ])
		category: class category