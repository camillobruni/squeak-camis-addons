private
openClassBrowser
	| classNode classes |
	classes := self searchNode classes.
	classNode := classes size = 1 
		ifTrue: [classes first]
		ifFalse: [OBClassNode on: (Smalltalk at: pattern first asSymbol)].
	^self browser isClassBrowser
		ifTrue: [self browser jumpTo: classNode]
		ifFalse: [classNode browse]