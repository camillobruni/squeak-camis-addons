callbacks
labelMorph
	| morph |
	(Smalltalk classNamed: #UITheme) ifNotNilDo: [:uit |
		^uit current buttonLabelForText: label].
	morph := (StringMorph 
		contents: label 
		font: TextStyle defaultFont).
	(label isText and: [label hasColor]) ifFalse: [morph color: (self isEnabled ifTrue: [Color black] ifFalse: [Color gray])].
	^morph