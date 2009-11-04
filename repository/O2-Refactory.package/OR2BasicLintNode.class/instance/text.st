accessing
text
	| text |
	text := String 
		streamContents: [ :stream |
			stream cr; cr.
			self result isClassEnvironment
				ifTrue: [
					self result classNames asSortedCollection
						do: [ :each | stream nextPutAll: each; cr ] ]
				ifFalse: [
					self result classesAndSelectorsDo: [ :class :selector |
						stream nextPutAll: class name; nextPutAll: '>>'; print: selector; cr ] ] ]
		limitedTo: 4096.
	text size < 4096
		ifFalse: [ text := text , '...' ]. 
	^ super text , text