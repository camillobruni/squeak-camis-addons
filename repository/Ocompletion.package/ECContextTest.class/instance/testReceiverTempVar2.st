as yet unclassified
testReceiverTempVar2
	| text context |
	text := 'openMenuFor: aParagraphEditor 
	| theMenu |
	context := ECContext
				controller: self
				class: model receiverClass
				source: aParagraphEditor text string
				position: aParagraphEditor caret - 1.
	editor := aParagraphEditor.
	theMenu := ECMenuMorph
				controller: self
				position: (aParagraphEditor selectionPosition: context completionToken).
	theMenu isClosed
		ifFalse: [menuMorph := theMenu]. theMenu o'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == ECMenuMorph