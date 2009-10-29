backspace handling
userHasEdited
	"ignore this if generated during backTo:
	See comment in backTo: "

	(inBackTo isNil or: [inBackTo not])
		ifTrue:[^super userHasEdited]
	