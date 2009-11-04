accessing
refactorings
	| class |
	class := self model classNamed: className asSymbol.
	^  class instanceVariableNames collect: [ :each | 
		CreateAccessorsForVariableRefactoring
			variable: each class: class classVariable: false ]