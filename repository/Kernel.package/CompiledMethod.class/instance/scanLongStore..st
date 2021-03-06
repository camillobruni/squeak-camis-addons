scanning
scanLongStore: extension 
	"Answer whether the receiver contains a long store whose extension is 
	the argument."
	| scanner |
	scanner := InstructionStream on: self.
	^scanner scanFor: 
		[:instr |  (instr = 129 or: [instr = 130]) and: [scanner followingByte = extension]]