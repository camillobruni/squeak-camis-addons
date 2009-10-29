as yet unclassified
openXMenuFor: aParagraphEditor 
	| theMenu |
	self closeMenu.
	context := menuMorph 
		ifNotNil: [menuMorph context] 
		ifNil: [self contextClass 
				controller: self
				class: model selectedClassOrMetaClass
				source: aParagraphEditor text string
				position: aParagraphEditor caret - 1].
	
	editor := aParagraphEditor.
	self expand.
	theMenu := self menuMorph controller: self
				position: (aParagraphEditor selectionPosition: context completionToken).
	theMenu isClosed ifFalse: [menuMorph := theMenu].
	