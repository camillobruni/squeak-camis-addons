backspace handling
backTo: startIndex
	"When backspacing, 2 notifications of the userHasEdited are received.
	This then causes a background process to not terminate correctly.
	The reason for all this is uncertain, but discarding the superfluous userHasEdited
	message received while running backTo: seems to cure the problem"
	| answer |
	[inBackTo := true.
	answer := super backTo: startIndex
	] ensure:[
		inBackTo:=false.
		^answer]
	