accessing
arguments
	| parser |
	parser := RBParser new.
	parser errorBlock: [ :error :position | ^ #() ].
	parser initializeParserWith: self source type: #on:errorBlock:.
	^ parser parseMessagePattern argumentNames