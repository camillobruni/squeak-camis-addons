as yet unclassified
openMenuFor: aParagraphEditor 
	| theMenu |
	self closeMenu.
	context := self contextClass 
				controller: self
				class: model selectedClassOrMetaClass
				source: aParagraphEditor text string
				position: aParagraphEditor caret - 1.
	
	editor := aParagraphEditor.
	theMenu := self menuMorph controller: self
				position: (aParagraphEditor selectionPosition: context completionToken).
	theMenu isClosed ifFalse: [menuMorph := theMenu].
	