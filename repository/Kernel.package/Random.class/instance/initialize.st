initialization
initialize
	" Set a reasonable Park-Miller starting seed "
	super initialize.
	[seed := (Time millisecondClockValue bitAnd: 16r3FFFFFFF) bitXor: self hash.
	seed = 0] whileTrue: ["Try again if ever get a seed = 0"].

	a := 16r000041A7 asFloat.    " magic constant =      16807 "
	m := 16r7FFFFFFF asFloat.    " magic constant = 2147483647 "
	q := (m quo: a) asFloat.
	r  := (m \\ a) asFloat.
