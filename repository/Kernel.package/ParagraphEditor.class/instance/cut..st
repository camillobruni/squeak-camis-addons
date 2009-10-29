editing keys
cut: characterStream 
	"Cut out the current text selection.  Flushes typeahead."

	self cut.
	^true