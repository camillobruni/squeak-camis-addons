accessing
text
	| text |
	text := change printString.
	(text endsWith: '!')
		ifTrue: [ text := text allButLast ].
	^ (RBParser parseExpression: text)
		formattedCode