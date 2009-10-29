menu morph
openMenuFor: aParagraphEditor 
	| theMenu |
	context := ECContext
				controller: self
				class: model selectedClassOrMetaClass 
				source: aParagraphEditor text string
				position: aParagraphEditor caret - 1.
	editor := aParagraphEditor.
	theMenu := ECMenuMorph
				controller: self
				position: (aParagraphEditor selectionPosition: context completionToken).
	theMenu isClosed
		ifFalse: [menuMorph := theMenu]. 