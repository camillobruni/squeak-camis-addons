private
paragraphClass
	container ifNil: [^ MultiNewParagraph].
	^ container paragraphClass