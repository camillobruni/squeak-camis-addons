as yet unclassified
methodFor: dataAndAnswers
	"Return a Squeak expression that computes these answers.  (This method is called by the comment in the bottom pane of a MethodFinder.  Do not delete this method.)"

	| resultOC resultString |
	resultOC := (self new) load: dataAndAnswers; findMessage.
	resultString := String streamContents: [:strm |
		resultOC do: [:exp | strm nextPut: $(; nextPutAll: exp; nextPut: $); space]].
	^ resultString