accessing
text
	^ (self isDisplayingDiffs and: [ self theClass notNil and: [ self theClass includesSelector: self selector ] ])
		ifFalse: [ change parseTree formattedCode ]
		ifTrue: [
			TextDiffBuilder
				buildDisplayPatchFrom: (self theClass parseTreeFor: self selector) 
					formattedCode
				to: change parseTree formattedCode ]