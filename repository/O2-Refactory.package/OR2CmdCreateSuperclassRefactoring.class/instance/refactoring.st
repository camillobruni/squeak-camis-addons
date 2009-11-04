accessing
refactoring
	| class superclassName |
	class := self currentNode theNonMetaClass.
	superclassName := self request: 'Enter new superclass name:'.
	^ ChildrenToSiblingsRefactoring 
		name: superclassName
		class: class
		subclasses: ((OBMultipleChoiceRequest 
			prompt: 'Select subclasses of ' , superclassName , ':'
			labels: (class subclasses collect: [ :each | each name ])
			values: class subclasses)
			ifNil: [ ^ nil ])