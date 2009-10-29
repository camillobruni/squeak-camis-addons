*o2-morphic
acceptDroppingMorph: transferMorph event: evt inMorph: listMorph 
	| target |
	target := self nodeForDropEvent: evt inMorph: listMorph.
	^self drop: transferMorph passenger on: target