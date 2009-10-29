accessing
state
	| bold |
	bold _ self text isText and: [(self text rangeOf: TextEmphasis bold startingAt: 1) size > 0].
	^ JsonObject new
		text: self text;
		bold: bold;
		yourself