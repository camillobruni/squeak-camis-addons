initialize-release
initialize
	"Initialize the receiver"
	super initialize.
	eventQueue := SharedQueue2 new.
	mouseButtons := 0.
	mousePosition := 0 @ 0